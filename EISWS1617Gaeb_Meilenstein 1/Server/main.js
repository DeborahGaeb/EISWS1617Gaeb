var http = require('http');
var faye = require('faye');
var io = require('socket.io')(server);
var express = require('express');
var bodyParser = require('body-parser');

var path = require('path');
var url = require('url');

//Server erstellen
var app = express();
var server = http.createServer(app);

//app.use(express.static(__dirname + '/public'));

//Adapter konfig
var bayeux = new faye.NodeAdapter({
    mount: '/faye',
});

//Adaper zum Server hinzufügen
bayeux.attach(server);

//Serverseitige Pubish-Subscrieb Client erzeugen
var client = new faye.Client('http://lovalhost:8000/Faye');

//Channel news
var subscription = client.subscribe('/news', function(massage){
    console.log("Neue Massage von " + massage.name + ": " + massage.content);
}); 
var clientSockets = []

io.on('connection', function(socket){
    
    clientSockets.push(socket);
    console.log("verbindung wurde hergestellt.");
    
    socket.on('massage', function(data){
            console.log("msg: " + data);
            clientSockets.forEach(function(clientSockets){
                clientSockets.send(data);
        }); 
     });
    socket.on('disconnect', function() {
        console.log("Verbinung wurde abgebrochen.");
        clientSockets.splice(clientSockets.indexOf(socket), 1);
    });
    
});

server.listen(8000, function(){
    console.log("Server läuft auf Port 8000");
});