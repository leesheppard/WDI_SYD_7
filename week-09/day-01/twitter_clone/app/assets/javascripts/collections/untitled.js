var _ = {};

_.filter = function(array, callback) {
  var newArray = [];

  for (el in array) {
    if (callback(el)) {
      newArray.push(el);
    }
  }

  return newArray;
}

var numbers = [5, 15, 1, 456, 3];

_.filter(numbers, function(num) {
  return num > 10;
});

// [15, 456];

_.filter(numbers, function(num) {
  return num <= 10;
});

// [5, 1, 3]






