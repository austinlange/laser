module.exports = function(app) {
	require(__dirname + '/api/user').call(this, app);
	require(__dirname + '/api/equipment').call(this, app);
}