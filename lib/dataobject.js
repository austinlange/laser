var Redis = require('./db');
var Postgre = require('./pg');
var util = require('util');

var DataObject = function(options) {
	options = options || {};

	if (!options.tableName) {
		throw new Error("No tablename specified");
	}

	this.tableName = options.tableName;
	this.validFields = options.validFields || {};

	this.client = Postgre.client;
}

DataObject.prototype.getId = function() { return this.id; };

DataObject.prototype.loadById = function(id, callback) {
	if (!id || isNaN(id)) {
		return callback(new Error("Invalid argument: id"));
	}

	this.loadByField('id', id, (function(error) {
		if (error) {
			return callback(error);
		}

		return callback();
	}).bind(this));
};

DataObject.prototype.loadByField = function(field, value, callback) {
	if (!field || !value) {
		return callback(new Error("Invalid argument: field or value is null"));
	}

	var query = util.format("SELECT * FROM %s WHERE %s = $1", this.tableName, field);

	this.client.query(query, (util.isArray(value) ? value : [value]), (function(error, result) {
		if (error) {
			return callback(error);
		}

		if (!result || !result.rows) {
			return callback(new Error("Bad response from database"));
		}

		if (result.rows.count == 0 || !result.rows[0]) {
			return callback(new Error("Record not found"));
		}

		this.loadFromObject(result.rows[0]);

		return callback(null);
	}).bind(this));
};

DataObject.prototype.loadFromObject = function(object) {
	this.id = Number(object.id);

	for (var field in this.validFields) {
		switch (field.type) {
			case "Number":
				if (!isNaN(Number(result[field]))) {
					this[field] = Number(object[field]) || 0;
				}
				break;
			case "String":
			default:
				this[field] = object[field] || "";
				break;
		}
	}
}

DataObject.create = function(object, options, callback) {

	var newObject = new object();
	var fieldList = Object.keys(newObject.validFields);
	var valueList = [];

	for (var field in newObject.validFields) {
		if (newObject.validFields[field].dbo) {
			valueList.push(newObject.validFields[field].dbo);
		} else if (newObject.validFields[field].type && newObject.validFields[field].type === 'Number') {
			valueList.push(options[field] || 0);
		} else {
			valueList.push(options[field] ? "'" + options[field] + "'" : "''");
		}
	}

	valueList.push('DEFAULT');
	fieldList.push('id');

	var fieldString = fieldList.join(',');

	var query = util.format("INSERT INTO %s (%s) VALUES (%s) RETURNING %s", newObject.tableName, fieldString, valueList.join(","), fieldString);
	console.log("CREATE query: %s", query);

	Postgre.client.query(query, (function(error, result) {
		if (error) {
			return callback(error);
		}

		if (result.rows && result.rows[0]) {
			for (var field in newObject.validFields) {
				if (result.rows[0][field]) {
					newObject[field] = result.rows[0][field];
				}
			}
			newObject.id = result.rows[0].id;

		} else {
			console.log("Error in result");
			console.log(result);
		}

		console.log("Created id %d", newObject.id);

		return callback(null, newObject);
	}).bind(this));
};

DataObject.prototype.update = function(callback) {
	if (!this.id || isNaN(this.id)) {
		return callback(new Error("No ID field provided to DataObject"));
	}

	var fieldList = [];
	var valueList = [];
	var valuePairs = [];

	var i = 1;
	for (var field in this.validFields) {
		if (this.validFields[field].type) {
			valuePairs.push(util.format("%s = $%d::%s", field, i++, this.validFields[field].type));
			valueList.push(this[field] || 0);
		} else {
			valuePairs.push(util.format("%s = $%d", field, i++));
			valueList.push(this[field] || "''");
		}
		fieldList.push(field);
	}

	var query = util.format("UPDATE %s SET %s WHERE id = %d RETURNING %s", this.tableName, valuePairs.join(", "), this.id, fieldList.join(", "));

	console.log("UPDATE query: %s", query);
	console.log("Value list: %s", valueList.join(", "));
	this.client.query(query, valueList, (function(error, result) {
		if (error) {
			return callback(error);
		}

		return callback(null, result);
	}).bind(this));
};

DataObject.searchByFields = function(object, fields, searches, callback) {
	if (!fields || !searches || fields.length == 0 || searches.length == 0) {
		return callback(new Error("Invalid parameters to searchByField"));
	}

	if (searches.length != fields.length) {
		return callback(new Error("Invalid number of parameters"));
	}

	var searchStrings = [];
	for (var k = 0; k < fields.length; k++) {
		searchStrings.push(util.format("lower(%s) LIKE '%%%s%%'", fields[k], searches[k]));
	}

	var query = util.format("SELECT * FROM %s WHERE %s", new object().tableName, searchStrings.join(" AND "));
	console.log("Search query: %s", query);
	Postgre.client.query(query, (function(error, result) {
		if (error) {
			return callback(error);
		}

		if (!result || !result.rows) {
			console.log(result);
			return callback(new Error("Database error"))
		}

		var list = [];
		var obj;

		for (var k = 0; k < result.rows.length; k++) {
			obj = new object();
			obj.loadFromObject(result.rows[k]);
			list.push(obj);
		}

		return callback(null, list);
	}).bind(this));
};

module.exports = DataObject;