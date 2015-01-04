var clientOne = new Client();
var clientTwo = new Client();
var clientThree = new Client();
var clientFour = new Client();

var server = new Server();

clientOne.connect(server);
clientTwo.connect(server);
clientThree.connect(server);
clientFour.connect(server);

clientOne.subscribe("A", function(message) {
  console.log(message.text);
});
clientOne.subscribe("B");
clientTwo.subscribe("A");
clientThree.subscribe("B");
clientThree.subscribe("C");
clientFour.subscribe("C");

server.publish("A", {
  text: "Hello World!"
})










