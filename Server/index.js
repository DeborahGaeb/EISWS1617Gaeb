/* Dieser Server ist von Deborah Gaeb geschrieben. 
Er ist fuer das mein EIS-Projekt erstellt wurden und in der Sprache 
Node.js geschrieben. In ihm befindet sich hauptsächlich die 
Datenstruktur*/

var express = require('express');
var app = express();
//var io = require('socket.io').listen(server);

var server = require('http').createServer(app);
var faye = require('faye');

var PORT        = 8000;

var bodyParser  = require('body-parser');
var jsonParser  = bodyParser.json();
                  app.use(bodyParser.json());

/*
app.get('/', function (req, res) {
    res.sendFile(__dirname + '/index.html');
});

*/

//wartezeiten
//Adapter


    //wartezeiten Adapter
    var bayeux = new faye.NodeAdapter({
        mount: '/faye',
        timeout: 45
    });

    bayeux.attach(server);



    var client = new faye.Client("http://localhost:8000/faye")
    var subscription = client.subscribe('/wartezeiten', function(massage) {
        console.log("Es kommen : " + massage.incomePapageienflug + "Menschen rein und es sind " + massage.programmPapageienflug + "Bahnen auf der Strecke.");
        var wartenzeitPapageinflug = massage.incomePapageienflug.parseInt / 10 * 60/ massage.programmPapageienflug; 
        console.log("Die Wartezeitbeträgt: " + wartenzeitPapageinflug);
    });
});
/* 
app.post('/', function(request, response){
    var publication = client.publish('/', {
        "wartezeiit": request.body.wartenzeitPapageinflug,
    });
    
    publication.then(
        function(){  
            console.log("Wartezeiten wurde gesendet.");
            //response.writeHead(200, "ok");
            response.write("Wartezeiten wurden gesendet.");
            response.end();
         },
        function (error){
            console.log("Wartezeiten wurden nicht gesendet.");
            response.write("nachtricht wurde gesendet");
            next(error)
        } 
    );
});
*/
/*
//Chat-Client

app.use(express.static(__dirname + '/public'));


var clientSockets = [];


app.use(bodyParser.json());

io.on('connection', function(socket) {
    
    clientSockets.push(socket);
    console.log("Verbindung hergestellt.");
    
    socket.on('message', function(data){
        console.log('msg', data);
    
    //Data = inhalt
    clientSockets.forEach(function (clientSocket) {
         clientSocket.send(data);
        })
    });
    
    //Sockenclient wird bei Verbindungsabbruch von der Socket Liste entfernt
    socket.on('disconnext', function() {
        console.log("Verbindung wurde abgebrochen!");
        clientSockets.splice(clientSockets.indexOf(socket), 1);
    });
}); 



*/

/*
app.get('/wartenzeitenEinstellen', function (req, res) {
    res.sendFile(__dirname + '/wartenzeitenEinstellen.html');
});
*/
    
server.listen (PORT, function () { 
        console.log("Der Server laeuft auf Port" + PORT);
});