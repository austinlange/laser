var User = require('../../lib/user');

module.exports = function(app) {
	var sendError = function(message, response) {
		return response.json(200, {"success": false, "error": message});
	};

	var sendSuccess = function(data, response) {

		return response.json(200, {"success": true, "type": Array.isArray(data) ? "list" : typeof(data), "data": data});
	};

	var sendObject = function(object, response) {
		return response.json(200, object);
	};

	app.post("/api/:version/user/:id", function(request, response, next) {
		if (!request.params.id) {
			return sendError("Missing required argument ID", response);
		}

		console.log("Updating " + request.params.id);

		var user = new User();

		var func = isNaN(request.params.id) ? user.loadByEmail : user.loadById;

		func.call(user, request.params.id, (function(error) {
			if (isNaN(user.id) || !user.id) {
				return sendError("User does not exist", response);
			}

			user.name = request.body.name || user.name;
			user.email = request.body.email || user.email;
			user.phone = request.body.phone || user.phone;

			user.update((function(error) {
				if (error) {
					return sendError(error.message, response);
				}

				return sendSuccess(user.toJSON(), response);
			}).bind(this));

		}).bind(this));
	});

	app.post("/api/:version/user", function(request, response, next) {
		var missingFields = [];

		if (!request.body.login) {
			missingFields.push("login");
		}

		if (missingFields.length > 0) {
			return sendError("Missing fields: " + missingFields.join(", "), response);
		} 

		User.create(request.body, (function(error, user) {
			if (error) {
				return sendError(error.message, response);
			}

			return sendSuccess(user.toJSON(), response);
		}).bind(this));
	});

	app.get("/api/:version/user/:id", (function(request, response, next) {
		if (!request.params.id) {
			return sendError("Missing required parameter: id");
		}

		var user = new User();

		var respond = (function(error) {
			if (error) {
				return sendError(error.message, response);
			}

			return sendSuccess(user.toJSON(), response);
		}).bind(this);

		if (isNaN(request.params.id)) {
			console.log("Looking up user by login: %s", request.params.id);
			return user.loadByLogin(request.params.id, respond);
		} else {
			console.log("Looking up user by ID: %d", request.params.id);
			return user.loadById(request.params.id, respond);
		}
	}).bind(this));

	app.get("/api/:version/user", (function(request, response, next) {
		console.log(request.query);

		if (!request.query.email && !request.query.name) {
			return sendError("No fields to search", response);
		}

		var searchResults = [];

		var handleResults = function(list) {

			for (var k = 0; k < list.length; k++) {
				searchResults.push(list[k].toJSON());
			}

			return sendSuccess(searchResults, response);
		}

		var searchFields = [];
		var searchTerms = [];
		if (request.query.email) {
			searchFields.push('email');
			searchTerms.push(request.query.email.toLowerCase());
		}

		if (request.query.name) {
			searchFields.push('name');
			searchTerms.push(request.query.name.toLowerCase());
		}

		User.searchByFields(searchFields, searchTerms, (function(error, list) {
			if (error) {
				return sendError(error.message, response);
			}
			if (!list) {
				return sendError("null response from database", response);
			}
			return handleResults(list || []);
		}).bind(this));

	}).bind(this));

};
