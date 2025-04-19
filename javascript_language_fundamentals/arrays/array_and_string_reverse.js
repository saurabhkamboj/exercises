function reverse(inputForReversal) {
  let result;
  if (Array.isArray(inputForReversal)) {
    result = [];
    for (let count = 1; count <= inputForReversal.length; count += 1) {
      result[inputForReversal.length - count] = inputForReversal[count - 1];
    }
  } else {
    result = '';
    for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
      result += inputForReversal[index];
    }
  }

  return result;
}

// Better solution by Launch School
function reverse(inputForReversal) {
  if (Array.isArray(inputForReversal)) {
    return reverseArray(inputForReversal);
  } else {
    return reverseString(inputForReversal);
  }
}

function reverseArray(inputForReversal) {
  const reversed = [];
  const length = inputForReversal.length;

  for (let i = 0; i < length; i += 1) {
    reversed[length - 1 - i] = inputForReversal[i];
  }

  return reversed;
}

function reverseString(inputForReversal) {
  const stringArray = inputForReversal.split('');
  return reverseArray(stringArray).join('');
}

console.log(reverse('Hello'));           // "olleH"
console.log(reverse('a'));               // "a"
console.log(reverse([1, 2, 3, 4]));      // [4, 3, 2, 1]
console.log(reverse([]));                // []

const array = [1, 2, 3];
console.log(reverse(array));             // [3, 2, 1]
console.log(array);                      // [1, 2, 3]