var x = 5;

var makeAdder = function(numberTwo) {
  return function(numberOne) {
    return numberOne + numberTwo;
  }
}

var plusFive = makeAdder(x);

plusFive(7);
//= 12