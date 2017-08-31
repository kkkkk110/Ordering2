var  express = require("express") ;
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

var path = require('path');

app.use(express.static(path.join(__dirname,'../')));

io.on('connection',function(client){
	client.on('aa',function(t){
			console.log(t)
		io.emit('bbs',t)
	})
	client.on('serve',function(s){
			console.log(s)
			io.emit('serve',s)
	})
	client.on('ob',function(g){
		io.emit('ob',g)
	})
	client.on('hujiao',function(k){
			io.emit('huji',k)
	})
})

http.listen(888);