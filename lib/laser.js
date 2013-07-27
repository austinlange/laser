var events = require('events');
var express = require('express');
var util = require('util');

var path = require('path');

var routes = require('../routes');

var Laser = function(options) {
	//console.log("routes" + routes);
	options = options || {};
	
	this.http = express();
	this.http.set(express.compress());
	this.http.set('views', __dirname + '../../views');
	this.http.set('view engine', 'hbs');
	this.http.use(express.favicon());
	this.http.use(express.logger('dev'));
	this.http.use(express.bodyParser());
	this.http.use(this.http.router);
	this.http.use(express.static(path.join(__dirname, '../public')));


	
	this.http.get('/', routes.index);
	this.http.get('/admin', routes.admin);
	this.http.get('/admin/dashboard', routes.dashboard);
	
	require("../routes/api/user").call(this, this.http);
	require("../routes/api/equipment").call(this, this.http);

	// 404 everything else
    this.http.all(/^\/api\/.*/, function(request, response, next) { 
		console.log(request.method.toUpperCase() + " 404: " + request.url);
		
		response.statusCode = 404;
		response.contentType("json");
		response.send({"error": "The requested resource was not found."});
	});

	var port = process.env.PORT || 3000;
	this.http.listen(port, function() {
		console.log("Listening on port " + port);	
	});

	events.EventEmitter.call(this);
};

util.inherits(Laser, events.EventEmitter);

Laser.prototype.openDatabase = function() {
	this.db = require('./pg');
	this.db.open((function() {
		if (this.db && this.db.client) {
			this.emit("connectedToDatabase");
		} else {
			this.emit("errorOnConnectingToDatabase");
		}
	}).bind(this));

};

module.exports = Laser;