var Equipment = require('../../lib/equipment');

module.exports = function(app) {
	var sendError = function(message, response) {
		return response.json(200, {"success": false, "error": message});
	};

	var sendSuccess = function(data, response) {
		return response.json(200, {"success": true, "data": data});
	};

	var sendObject = function(object, response) {
		return response.json(200, object);
	};

	app.get("/api/:version/equipment/:id", function(request, response, next) {
		// equipment by id or barcode
		if (!request.params.id) {
			return sendError('Missing required parameter id', response);
		}

		var equipment = new Equipment();

		if (/^000?\d{2,3}$/.test(request.params.id)) {
			return equipment.loadByBarcode(request.params.id, (function(error) {
				if (error) {
					return sendError(error.message, response);
				}

				return sendSuccess(equipment.toJSON(), response);
			}).bind(this));
		} else if (!isNaN(request.params.id)) {
			return equipment.loadById(request.params.id, (function(error) {
				if (error) {
					return sendError(error, response);
				}

				return sendSuccess(equipment, response);
			}).bind(this));
		} else {
			return sendError("Invalid ID format", response);
		}
	});

	app.get('/api/:version/equipment', function(request, response, next) {
		// search, sort, and filter
		sendSuccess('hooray', response);
	});

	app.post('/api/:version/equipment', function(request, response, next) {
		// create new equipment object
	});

	app.post('/api/:version/equipment/:id', (function(request, response, next) {
		// update equipment object
	}).bind(this));
};