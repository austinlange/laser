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

	app.get('/equipment', function(request, response, next) {
		// search, sort, and filter
		sendSuccess('hooray', response);
	});

	app.get('/equipment/:id', function(request, response, next) {
		// equipment by id or barcode
		if (!request.params.id) {
			return sendError('Invalid ID', response);
		}

		var equipment = new Equipment();
		equipment.loadById(request.params.id, (function(error) {
			if (error) {
				return sendError(error, response);
			}

			return sendSuccess(equipment, response);
		}).bind(this));
	});

	app.post('/equipment', function(request, response, next) {
		// create new equipment object
	});

	app.post('/equipment/:id', function(request, response, next) {
		// update equipment object
	});
};