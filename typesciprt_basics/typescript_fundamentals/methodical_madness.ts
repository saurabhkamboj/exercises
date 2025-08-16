// Create a function named toUpperCaseArray that takes an array of strings, converts each string to uppercase, and returns a new array.

// Expected outcome:

//     When given ['hello', 'world'], the function returns ['HELLO', 'WORLD'].

function toUpperCaseArray(array: Array<string>): Array<string> {
  return array.map((string) => string.toUpperCase());
}