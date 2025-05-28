/*
You have a bank of switches before you, numbered from 1 to n. Every switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You walk back to the beginning of the row and start another pass. On this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back to the beginning again, this time toggling switches 3, 6, 9, and so on. You continue to repeat this process until you have gone through n repetitions.

Write a program that takes one argument—the total number of switches—and returns an array of the lights that are on after n repetitions.
*/

/*
Problem
  - Input: an integer that denotes the number of switches
  - Output: an array containing the number representing lights that are on

  Rules:
  - The switches are numbered from 1 to n.
    - Therefore any input has to be > 0
  - Every switch is off initially.
  - When you walk over a row you toggle the switch
    - a toggle can either be on or off
    - it depends on the previous value
  - You toggle switches according to the current number
    - if switch % current number is 0, toggle it
  - You continue till the input

  - Iterate 1 to n times
  - On each iteration toggle switch
    - If switch % number === 0
  - Filter the switches that are on
  - Return the switches

Data structures
  - Toggle could mean either I remove or add something
    - This can be done in an array.
  - Toggle can also mean a value is changed
    - a boolean, true or false
  - return all indexes where value is true
  - you need to make sure that you return the number representing the light

Algorithm
  - if (arguments.light === 0 || max < 1) return 'Invalid argument'
  - let swtiches = new Array(n).fill(false);
  - for (let number = 1; number <= max; number += 1)
    - for (let index = number - 1; index < switches.length; index += number)
      - switches[index] = !switches[index]
  - let onSwitches = switches.map((value, index) => if (value) index + 1)
  - return onSwitches.filter(value => value)
*/

function lightsOn(max) {
  if (arguments.length === 0 || max < 1) return 'Invalid argument';
  let switches = Array(max).fill(false);
  for (let number = 1; number <= max; number += 1) {
    for (let index = number - 1; index < switches.length; index += number) {
      switches[index] = !switches[index];
    }
  }

  return switches.map((value, index) => value ? index + 1 : false).filter(value => value);
}

// Alternate
function setup(max) {
  let result = [];
  for (let number = 1; number <= max; number += 1) {
    result.push([number, false]);
  }

  return result;
}

function lightsOn(max) {
  if (arguments.length === 0 || max < 1) return 'Invalid argument';
  let switches = setup(max);
  for (let number = 1; number <= max; number += 1) {
    for (let index = number - 1; index < switches.length; index += number) {
      switches[index][1] = !switches[index][1];
    }
  }

  return switches.filter(value => value[1])
    .map(value => value[0]);
}

// Generic test cases
console.log(lightsOn(5));        // [1, 4]
// Detailed result of each round for `5` lights
// Round 1: all lights are on
// Round 2: lights 2 and 4 are now off;     1, 3, and 5 are on
// Round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
// Round 4: lights 2 and 3 are now off;     1, 4, and 5 are on
// Round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

console.log(lightsOn(100));      // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
console.log(lightsOn(133));

// Edge test cases
console.log(lightsOn(-1));
console.log(lightsOn());