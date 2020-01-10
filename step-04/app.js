var http=require('http');

http.createServer(function(req,res){
	res.writeHead(200,{'Content-Type': 'text/plain'});
	res.end('Hello Datavail team');
}).listen(3000);

console.log('SERVER is UP and Running');