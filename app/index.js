/* Dieser Server ist von Deborah Gaeb geschrieben. 
Er ist fuer das mein EIS-Projekt erstellt wurden und in der Sprache 
Node.js geschrieben. In ihm befindet sich hauptsächlich die 
Datenstruktur*/

var express = require('express');
var app = express()
var server = require('http').createServer(app)
var io = require('socket.io').listen(server)

var PORT        = 8080;

var bodyParser  = require('body-parser');
var jsonParser  = bodyParser.json();
                  app.use(bodyParser.json());


app.use(express.static(__dirname + '/public/chat.html'));

var clientSockets = [];


app.use(bodyParser.json());

io.of('chat').on('connection', function(socket) {
    clientSockets.push(socket);
    console.log("Verbindung hergestellt.");
    
    socket.on('message', function(data){
        console.log('msg', data);
                
        clientSockets.forEach(function (clientSocket) {
            clientSocket.send(data);
        })
    });
    
    //Sockenclient wird bei Verbindungsabbruch von der Socket Liste entfernt
    socket.on('disconnext', function() {
        console.log("Verbindung wurde abgebrochen");
        clientSockets.splice(clientSockets.indexOf(socket), 1);
    });
}); 

app.get('/wartenzeitenEinstellen', function (req, res) {
    res.sendFile(__dirname + '/wartenzeitenEinstellen.html');
});

app.listen (PORT);
    console.log("Der Server laeuft auf Port" + PORT);

