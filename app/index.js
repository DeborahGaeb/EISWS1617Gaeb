/* Dieser Server ist von Deborah Gaeb geschrieben. 
Er ist fuer das mein EIS-Projekt erstellt wurden und in der Sprache 
Node.js geschrieben. In ihm befindet sich hauptsächlich die 
Datenstruktur*/

var http        = require('http');
var express     = require('express');
var app         = express();

var bodyParser  = require('body-parser');
var jsonParser  = bodyParser.json();
var io          = require('socket.io').listen(server);
var app         = express();
var PORT        = 3000;
                  app.use(bodyParser.json());

var server = http.createServer(app);
app.use(bodyParser.json());

app.configure(function(){
	// statische Dateien ausliefern
	app.use(express.static(__dirname + '/wartenzeitenEinstellen'));
});

app.get('/wartenzeitenEinstellen', function (req, res) {
    res.sendFile(__dirname + '/wartenzeitenEinstellen.html');
});

 io.sockets.on('connection', function(socket) {
    socket.emit('Wartezeiten', { 'Du bist nun mit dem Server verbunden!' });
});
               
app.listen (PORT, function () {
    console.log("Der Server laeuft auf Port" + PORT);
});