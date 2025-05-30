let rlSync = require('readline-sync');
// let firstNumber = Number(rlSync.question('Enter the 1st number: '));
// let secondNumber = Number(rlSync.question('Enter the 2nd number: '));
// let thirdNumber = Number(rlSync.question('Enter the 3rd number: '));
// let fourthNumber = Number(rlSync.question('Enter the 4th number: '));
// let fifthNumber = Number(rlSync.question('Enter the 5th number: '));
// let lastNumber = Number(rlSync.question('Enter the last number: '));

// let numbers = [firstNumber, secondNumber, thirdNumber, fourthNumber, fifthNumber];
// let maxNumber = Math.max(...numbers);
// let minNumber = Math.min(...numbers);

// let isPart = lastNumber >= minNumber && lastNumber <= maxNumber;

// console.log(`The number ${lastNumber} ` + 
//   `${isPart ? 'appears ' : 'does not appear '}` +
//   `in [${numbers.join(', ')}].`
// );

// Right solution
let numbers = [];
numbers.push((rlSync.question('Enter the 1st number: ')));
numbers.push((rlSync.question('Enter the 2nd number: ')));
numbers.push((rlSync.question('Enter the 3rd number: ')));
numbers.push((rlSync.question('Enter the 4th number: ')));
numbers.push((rlSync.question('Enter the 5th number: ')));

let lastNumber = rlSync.question('Enter the last number: ');
let isPart = numbers.includes(lastNumber);

console.log(`The number ${lastNumber} ` + 
  `${isPart ? 'appears ' : 'does not appear '}` +
  `in [${numbers.join(', ')}].`
);