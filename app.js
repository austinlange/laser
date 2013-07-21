
var LASER = require('./lib/laser');
var Laser = new LASER({});
var User = require('./lib/user');

Laser.on("connectedToDatabase", (function(error) {
	if (error) {
		console.log(error);
		return;
	}

	console.log("LASER: Connected to db");

}).bind(Laser));

Laser.openDatabase();

// bind process events to the app
//process.on("exit", (Kraken.onProcessExit).bind(tos));
//process.on("uncaughtException", (Kraken.handleCriticalError).bind(tos));
//process.on("SIGINT", (Kraken.shutdown).bind(tos));
//process.on("SIGTERM", (Kraken.shutdown).bind(tos));
