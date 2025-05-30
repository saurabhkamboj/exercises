function swap(string) {
  return string.split(' ').reduce((result, word) => {
    let letters = [...word];
    [letters[0], letters[letters.length - 1]] = [letters[letters.length - 1], letters[0]];
    result.push(letters.join(''))
    return result;
  }, []).join(' ');
}

console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
console.log(swap('Abcde'));                          // "ebcdA"
console.log(swap('a'));                              // "a"