function buyFruit(array) {
  return array.flatMap(subarray => Array(subarray[1]).fill(subarray[0]))
}

// Much cleaner solution by Eisenchteter Alexandre
function buyFruit(array) {
  return array.flatMap(fillFruit);
}

function fillFruit([fruit, quantity]) {
  return Array(quantity).fill(fruit);
}

console.log(buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]));
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]