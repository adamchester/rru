// Include the CoffeeScript interpreter so that .coffee files will work
var coffee = require('coffee-script/register');

// Include our application file
var app = require('./app.coffee');

// Start the server
var port = process.env.port || 8080;

app.application.listen(port);

console.log('listening on port: ' + port);
