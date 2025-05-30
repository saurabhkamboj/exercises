let age = Math.floor(Math.random() * (200 - 2 + 1) + 2);
console.log(`Teddy is ${age} years old!`);

// Teddy is 69 years old!

function randomBetween(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function countRandomNumbers() {
  var count = {};
  var counter = 0;
  var number;

  while (counter < 10000) {
    number = String(randomBetween(20, 200));
    if (count[number]) {
      count[number] += 1;
    } else {
      count[number] = 1;
    }

    counter += 1;
  };

  console.log(count);
}

countRandomNumbers();

function testRand() {
  let x = 0;
  while (x !== 200) {
    x = Math.floor(Math.random() * 181) + 20;
  }
  console.log('ok');
}

testRand();