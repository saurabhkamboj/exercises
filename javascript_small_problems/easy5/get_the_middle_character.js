function centerOf(string) {
  let size = string.length;
  let middle = Math.floor(size/ 2)
  return size % 2 === 0 ? string.slice(middle - 1, middle + 1) : string[middle];
}

console.log(centerOf('I Love JavaScript')); // "a"
console.log(centerOf('Launch School'));     // " "
console.log(centerOf('Launch'));            // "un"
console.log(centerOf('Launchschool'));      // "hs"
console.log(centerOf('x'));                 // "x"