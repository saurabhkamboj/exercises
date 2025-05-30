let rlSync = require('readline-sync');
let age = rlSync.question('What is your age? ');
let retiringAge = rlSync.question('At what age would you like to retire? ');

let year = (new Date()).getFullYear();
let yearsToGo = retiringAge - age;

console.log(`It's ${year}. You will retire in ${year + yearsToGo}.`);
console.log(`You have only ${yearsToGo} years of work to go!`);

// What is your age? 30
// At what age would you like to retire? 70

// It's 2017. You will retire in 2057.
// You have only 40 years of work to go!