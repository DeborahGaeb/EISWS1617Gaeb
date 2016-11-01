var http = require('http');
var faye = require('faye');
var express = require('express');
var bodyParser = require('body-parser');

//Server erstellen
var app = express();
var server = http.createServer(app);


//Adapter konfig
var bayeux = new faye.NodeAdapter({
    mount: '/faye',
});

//Adaper zum Server hinzufügen
bayeux.attach(server);

//Serverseitige Pubish-Subscrieb Client erzeugen
var client = new faye.Client('http://lovalhost:8000/faye');

//Channel news
var subscription = client.subscribe('/news', function(massage){
    console.log("Neue Massage von " + massage.name + ": " + massage.content);
}); 

server.listen(8000, function(){
    console.log("Server läuft auf Port 8000");
});