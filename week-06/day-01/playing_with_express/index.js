'use strict';

var express = require('express');
var bodyParser = require('body-parser');
var app = express();

app.use(bodyParser.urlencoded({ extended: true }));

app.use(function(req, res, next) {
  setTimeout(function() {
    next();
  }, 5000);
  console.log("test");
});

app.get('/', function(req, res) {
  console.log("done");
  res.send("Hello World!");
});

app.post('/', function(req, res) {
  res.send("Hello " + req.body.name + req.body.last_name);
});

var server = app.listen(3000, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

});