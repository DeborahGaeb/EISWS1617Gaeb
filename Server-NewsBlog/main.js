var express = require('express');
var app     = express();
var httpServer = require('http').Server(app);
var io = require('socket.io')(httpServer);

var PORT = 8000

var express = require('express');
var bodyParser = require('body-parser');

//app.use(express.static(__dirname + '/public'));
app.get('/', function (req, res) {
    res.sendfile(__dirname + '/public/index.html');
});
app.get('/newsBlog', function (req, res) {
    res.sendfile(__dirname + '/public/newsBlog.html');
});
app.get('/wartezeitenErstellen', function (req, res) {
    res.sendfile(__dirname + '/public/wartezeitenErstellen.html')
});

var clientSockets = [];
//NewsBlog
io.of('newsBlog').on('connection', function (socket) {
        
        clientSockets.push(socket);
        console.log("Socket ist verbunden");
        
        socket.on('message', function (data) {
            console.log('msg:', data);
            
            
            clientSockets.forEach(function(clientSocket) {
                clientSocket.send(data);
             });
        });   
        socket.on('disconnect', function(){
             console.log("Verbindung ist abgebrochen.");
             clientSockets.splice(clientSockets.indexOf(socket)), 1;  
        });
       
});
//Wartezeiten Funktion 

io.of('wartezeitenErstellen').on('connection', function (socket) {
    clientSockets.push(socket);
        console.log("Socket ist verbunden");
        
        socket.on('message', function (data) {
            console.log('dasVerrueckteHotelTatuetatIncome', data);
            console.log('dasVerrueckteHotelTatuetatProgramm', data);
            console.log('dasVerrueckteHotelTatuetatOutcome', data);
            console.log('maeuseJagtIncome', data);
            console.log('maeuseJagtBahnen', data);
            console.log('maeuseJagtoutcome', data);
            console.log('historischesPferdeKaruselIncome', data);
            console.log('historischesPferdeKaruselOutcome', data);
            console.log('historischesPferdeKaruselOutcome', data);
            console.log('geisterflugIncome', data);
            console.log('geisterflugBahnen', data);
            console.log('geisterflugOutcome', data);
            console.log('spookyCastleIncome', data);
            console.log('spookyCastleBahnen', data);
            console.log('spookyCastleOutcome', data);
            console.log('daemonenRideIncome', data);
            console.log('daemonenRideProgramm', data);
            console.log('daemonenRideOutcome', data);
            console.log('xiuhcoatlIncome', data);
            console.log('xiuhcoatlProgramm', data);
            console.log('xiuhcoatlOutcome', data);
            console.log('arizonasExpressIncome', data);
            console.log('arizonasExpressProgramm', data);
            console.log('arizonasExpressOutcome', data);
            console.log('papageienFlugIncome', data);
            console.log('papageienFlugProgramm', data);
            console.log('papageienFlugOutcome', data);
            console.log('WurmexpressIncome', data);
            console.log('wurmExpressProgramm', data);
            console.log('wurmExpressOutcome', data);
            console.log('raketenFlugDeluxIncome', data);
            console.log('raketenFlugDeluxProgramm', data);
            console.log('raketenFlugDeluxOutcome', data);
             
        });
});

httpServer.listen(PORT, function(){
    console.log("Server läuft auf Port: " + PORT);
});