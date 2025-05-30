const WORDS_TO_DIGITS = { zero: 0, one: 1, two: 2, three: 3, four: 4, 
                          five: 5, six: 6, seven: 7, eight: 8, nine:9 }

function wordToDigit(string) {
  return string.split(' ').map(word => {
    let cleanWord = word.replace(/\W/g, '');
    if (WORDS_TO_DIGITS[cleanWord]) {
      word = word.replace(cleanWord, WORDS_TO_DIGITS[cleanWord]);
    }

    return word;
  }).join(' ');
}

// Much simpler solution by Launch School
function wordToDigit(string) {
  Object.keys(WORDS_TO_DIGITS).forEach(word => {
    let regex = new RegExp('\\b' + word + '\\b', 'g');
    string = string.replace(regex, WORDS_TO_DIGITS[word]);
  });

  return string;
}

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// "Please call me at 5 5 5 1 2 3 4. Thanks."                          