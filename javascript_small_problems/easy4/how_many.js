const vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
                'motorcycle', 'suv', 'motorcycle', 'car', 'truck'];

function countOccurrences(array) {
  let result = {};
  for (let value of array) {
    result[value] = result[value] || 0;
    result[value] += 1;
  }

  for (let key in result) {
    console.log(`${key} => ${result[key]}`);
  }
}

countOccurrences(vehicles);

// console output
// car => 4
// truck => 3
// SUV => 1
// motorcycle => 2
// suv => 1