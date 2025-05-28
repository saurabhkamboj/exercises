/*
Please enter an integer greater than 0: 5
Enter "s" to compute the sum, or "p" to compute the product. s

The sum of the integers between 1 and 5 is 15.

Please enter an integer greater than 0: 6
Enter "s" to compute the sum, or "p" to compute the product. p

The product of the integers between 1 and 6 is 720.
*/

let rlSync = require('readline-sync');
let integer = parseInt(rlSync.question('Please enter an integer greater than 0: '));
let type = rlSync.question('Enter "s" to compute the sum, or "p" to compute the product: ');

let compute = 1;
switch (type) {
  case 's':
    for (let current = 2; current <= integer; current += 1) {
      compute += current;
    }
    break;
  case 'p':
    for (let current = 2; current <= integer; current += 1) {
      compute *= current;
    }
    break;
}

console.log(`The ${type === 's' ? 'sum' : 'product'} of the integers between 1 and ${integer} is ${compute}.`);
