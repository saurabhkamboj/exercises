function cleanUp(string) {
  return string.replace(/[^a-z]+/gi, ' ')
}

// Solution without Regex
function cleanUp(string) {
  let result = '';
  for (let index = 0; index < string.length; index += 1) {
    if (isLowerCaseChar(string[index]) || isUpperCaseChar(string[index])) {
      result += string[index];
    } else if (index === 0 || result[result.length - 1] !== ' ') {
      result += ' ';
    }
  }

  return result;
}

function isLowerCaseChar(char) {
  return (char >= 'a' && char <= 'z');
}

function isUpperCaseChar(char) {
  return (char >= 'A' && char <= 'Z');
}

console.log(cleanUp("---what's my +*& line?"));    // " what s my line "