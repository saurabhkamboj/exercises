function swapName(string) {
  return string.split(' ').reverse().join(', ');
}

// Further exploration
function swapName(string) {
  let parts = string.split(' ');
  let [lastName, firstName] = [parts.slice(-1)[0], parts.slice(0, -1)];

  return lastName + ', ' + firstName.join(' ');
}

console.log(swapName('Joe Roberts'));    // "Roberts, Joe"
console.log(swapName('Joe Norman Roberts'));    // "Roberts, Joe Norman"