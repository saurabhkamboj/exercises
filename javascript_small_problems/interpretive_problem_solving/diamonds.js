// Write a function that displays a four-pointed diamond in an nxn grid, where n is an odd integer supplied as an argument to the function. You may assume that the argument will always be an odd integer.

/*
Problem
  - Input: an odd integer
  - Output: a line by line output of stars and spaces

  Rules:
  - The input will always be an odd integer (Good).
  - The diamond needs to formed using ' ' and *

  - Calculate the number of upper and lower lines
  - Output all upper lines
  - Output middle line
  - Output all lower lines
  
Data structure
  - The output on each line will be a string.
  - String can be created using string interpolation.
  - The middle line is input * '*'
  - The upper lines and lower lines are (input - 1) / 2
  - Therefore, in an example such as 9, there are 4 upper lines.
  - The string of each upper line is (descending order 4, 3, 2, 1):
    - ' ' * (upper line number) + '*' * (input - upper line number * 2) + ' ' * (upper line number)
    - Can use `repeat()` here.

Algorithm
  - let half = ((input - 1) / 2) (Could also use Math.floor(input / 2))

  For upper lines:
  - Iterate using for loop, iterate from half (while line is > 0)
    - ' '.repeat(line) + '*'.repeat(input - (line * 2)) + ' '.repeat(line)
  For middle line:
  - '*'.repeat(input)
  For lower lines:
  - Iterate using for loop, iterate from 1 (while line <= half)
    - ' '.repeat(line) + '*'.repeat(input - (line * 2)) + ' '.repeat(line)
*/

function diamond(input) {
  let half = Math.floor(input / 2); // (input - 1) / 2 is better

  // Upper lines
  for (let line = half; line > 0; line -= 1) {
    log(line, input);
  }

  // Middle lines
  console.log('*'.repeat(input));

  // Lower lines
  for (let line = 1; line <= half; line += 1) {
    log(line, input);
  }
}

function log(line, input) { // The function name could be `printDiamondLine`
  console.log(' '.repeat(line) 
    + '*'.repeat(input - (line * 2)) 
    + ' '.repeat(line)); // This line is not required
}

diamond(1);
// logs
// *

diamond(3);
// logs
//  *
// ***
//  *

diamond(9);
// logs
//     *
//    ***
//   *****
//  *******
// *********
//  *******
//   *****
//    ***
//     *