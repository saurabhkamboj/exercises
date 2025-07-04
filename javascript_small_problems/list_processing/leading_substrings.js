function leadingSubstrings(string) {
  return string.split('').map((_, index) => string.slice(0, index + 1));
}

// Alternate
function leadingSubstrings(string) {
  return [...string].map((_, index) => string.slice(0, index + 1));
}

console.log(leadingSubstrings('abc'));      // ["a", "ab", "abc"]
console.log(leadingSubstrings('a'));        // ["a"]
console.log(leadingSubstrings('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]