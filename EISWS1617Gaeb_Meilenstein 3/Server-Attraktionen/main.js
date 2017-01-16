var express = require('express');
var app     = express.createServer();
var faye = require('faye');

var PORT = 8080

var express = require('express');
var bodyParser = require('body-parser');

var bayeux = new faye.NodeAdapter({mout: 'faye', timeout: 45});

app.post('/wartezeitenErstellen', function (req, res) {
	wzDasVerrueckteHotelTatuetat = Das verrükte Hotel Tatütat
	
})

bayeux.attach(app);
app.listen(8080);