
var LASER = require('./lib/laser');
var Laser = new LASER({});
var User = require('./lib/user');

Laser.on("connectedToDatabase", (function(error) {
	if (error) {
		console.log(error);
		return;
	}

	console.log("LASER: Connected to db");

	return;
	var sam;
	User.create({
		'email': 'sam.kelly.developer@gmail.com',
		'name': 'sam kelly',
		'password': 'password',
		'status': 1,
		'login': 'sam.kelly',
		'created': new Date()
	}, (function(error, user) {
		if (error) {
			console.log(error);
			sam = new User();
			return sam.loadById(21, (function(error) {
				if (error) {
					return console.log(error);
				}

				return console.log(sam.toJSON());

			}).bind(this));
		}

		sam = user;

		return console.log("[%d] %s <%s> created", sam.id, sam.name, sam.email);
	}).bind(this));

}).bind(Laser));

Laser.openDatabase();

// bind process events to the app
//process.on("exit", (Kraken.onProcessExit).bind(tos));
//process.on("uncaughtException", (Kraken.handleCriticalError).bind(tos));
//process.on("SIGINT", (Kraken.shutdown).bind(tos));
//process.on("SIGTERM", (Kraken.shutdown).bind(tos));
