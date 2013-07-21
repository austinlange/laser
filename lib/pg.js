process.env.HEROKU_POSTGRESQL_CYAN_URL = process.env.HEROKU_POSTGRESQL_CYAN_URL || "postgres://postgres:clockwork@localhost:5432/laser";
var PG = require('pg');

var Postgre = function() {

}

Postgre.prototype.open = function(callback) {
	console.log("Connecting to " + process.env.HEROKU_POSTGRESQL_CYAN_URL);
	PG.connect(process.env.HEROKU_POSTGRESQL_CYAN_URL, (function(error, client) {
		if (error) {
			return callback(error);
		}

		this.client = client;

		return callback(null);
	}).bind(this));
}

module.exports = new Postgre();