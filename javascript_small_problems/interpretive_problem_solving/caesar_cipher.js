/*
Write a function that implements the Caesar Cipher. The Caesar Cipher is one of the earliest and simplest ways to encrypt plaintext so that a message can be transmitted securely. It is a substitution cipher in which each letter in a plaintext is substituted by the letter located a given number of positions away in the alphabet. For example, if the letter 'A' is right-shifted by 3 positions, it will be substituted with the letter 'D'. This shift value is often referred to as the key. The "encrypted plaintext" (ciphertext) can be decoded using this key value.

The Caesar Cipher only encrypts letters (including both lower and upper case). Any other character is left as is. The substituted letters are in the same letter case as the original letter. If the key value for shifting exceeds the length of the alphabet, it wraps around from the beginning.
*/

/*
Problem
  - Input: a string of characters (plaintext), and an integer (key)
  - Output: a string of chracters (ciphertext)

  Rules:
  - Encrypt only letters, any other character is left as it is.
  - The substituted letters should maintain case.
  - If the position of char + key exceeds length of the alphabet, it wraps around.

  Test cases
  - Input types (String and Number)
  - Special values
    - Empty string and number > Return an empty string
    - String and negative number
  - Valid/Invalid inputs
    - String containing numeric

  Breakdown
  - Iterate over each char.
  - If char is an alphabet
    - Return new char
    - Else return char
  - Return new string

Data structure
  - A constant containing an array of alphabets
  - Transform each char of the string (use map)
  - Convert string into an array of chars
  - if (letter.charCodeAt(0) + key) > ALPHABETS_END
    - keyValue -= TOTAL_ALPHABETS
  - if (letter.charCodeAt(0) + key) < ALPHABETS_START
    - keyValue += TOTAL_ALPHABETS


Algorithm
  - Initialize a constant containing the start position of alphabets
  - Initialize a constant containing the end position of alphabets
  - Initialize a constant containing total number of alphabets

  - Iterate over each letter of `plainText` using `map`
    - If /[a-z]/i.test(value)
      - Initialize keyValue = value.toLowerCase().charCodeAt(0) + key
      - Initialize upperCase = (value.toUpperCase() === value)
      - if (keyValue > ALPHABETS_END)
        - keyValue -= TOTAL_ALPHABETS
      - else if (keyValue < ALPHABETS_START)
        - keyValue += TOTAL_ALPHABETS
      - value = String.fromCharCode(keyValue)
      - return (upperCase ? value.toUpperCase() : value)
    - Else
      - return value
  - Join the returned array and return it
*/

const ALPHABETS_START = 'a'.charCodeAt(0);
const ALPHABETS_END = 'z'.charCodeAt(0);
const TOTAL_ALPHABETS = 26;

function caesarEncrypt(plainText, key) {
  key = checkKey(key);

  return [...plainText].map(value => {
    if (/[a-z]/i.test(value)) {
      let keyValue = value.toLowerCase().charCodeAt(0) + key;
      let upperCase = (value.toUpperCase() === value);

      if (keyValue > ALPHABETS_END) {
        keyValue -= TOTAL_ALPHABETS;
      } else if (keyValue < ALPHABETS_START) {
        keyValue += TOTAL_ALPHABETS;
      }

      value = String.fromCharCode(keyValue);
      return (upperCase ? value.toUpperCase() : value);
    } else {
      return value;
    }
  }).join('');
}

function checkKey(key) {
  if (key > TOTAL_ALPHABETS || key < 0) {
    return (key %= TOTAL_ALPHABETS);
  } else {
    return key;
  }
}

// simple shift
console.log(caesarEncrypt('A', 0));       // "A"
console.log(caesarEncrypt('A', 3));       // "D"

// wrap around
console.log(caesarEncrypt('y', 5));       // "d"
console.log(caesarEncrypt('a', 47));      // "v"

// all letters
console.log(caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25));
// "ZABCDEFGHIJKLMNOPQRSTUVWXY"
console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5));
// "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// many non-letters
console.log(caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2));
// "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"

// empty string
console.log(caesarEncrypt('', 3));
// ''

// negative number
console.log(caesarEncrypt('D', -3));
// 'A'

// larger negative number
console.log(caesarEncrypt('D', -5));
// 'A'

// string containing numeric
console.log(caesarEncrypt('A3', 3));
// 'D3'