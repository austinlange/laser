var DataObject = require('./dataobject');
var util = require('util');
var crypto = require('crypto');

var Equipment = module.exports = function() {
	var options = {};
	options.tableName = 'equipment';
	options.validFields = {
		'name': true,
		'barcode': true,
		'serial': true,
		'quantity': {type: "Number"},
		'category': {type: "Number"},
		'longtext': true,
		'extrafield': true,
		'label': true
	};

	DataObject.call(this, options);
};

util.inherits(Equipment, DataObject);

Equipment.prototype.loadById = function(id, callback) {
	DataObject.prototype.loadById.call(this, id, (function(error) {
		if (error) {
			return callback(error);
		}

		return callback(null);
	}).bind(this));
};

Equipment.prototype.loadByBarcode = function(barcode, callback) {
	console.log("Loading user by barcode: %s", barcode);
	DataObject.prototype.loadByField.call(this, 'barcode', barcode, callback);
};

Equipment.create = function(options) {
	if (!options) {
		return callback(new Error("No options defined for equipment"));
	}

	if (!options.name) {
		return callback(new Error("No name defined for equipment"));
	}

	if (!options.barcode) {
		return callback(new Error("No barcode defined for eqiupment"));
	}

	if (!options.serial) {
		return callback(new Error("No serial defined for equipment"));
	}

	console.log("Creating equipment: %s\t%s\t%s", options.name, options.barcode, options.serial);

	DataObject.create.call(this, Equipment, options, (function(error, equipment) {
		if (error) {
			return callback(new Error("Error creating user: " + error.detail));
		}

		return callback(null, equipment);
	}).bind(this));
};

Equipment.prototype.toJSON = function() {
	var json = {};

	json.id = this.id;
	json.name = this.name;
	json.barcode = this.barcode;
	json.serial = this.serial;
	json.quantity = this.quantity;
	json.category = this.category;
	json.longtext = this.longtext;
	json.extrafield = this.extrafield;
	json.label = this.label;

	return json;
};
