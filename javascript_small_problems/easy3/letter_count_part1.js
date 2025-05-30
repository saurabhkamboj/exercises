function wordSizes(string) {
  if (string.length === 0) return {};

  let words = string.split(' ');
  let result = {};
  for (let word of words) {
    if (result[word.length]) {
      result[word.length] += 1;
    } else {
      result[word.length] = 1;
    }
  }

   return result;
}

// Better solution by Launch School
function wordSizes(string) {
  const words = string.split(' ');
  const result = {};

  for (let word of words) {
    let size = word.length;
    if (size === 0) continue;

    result[size] = result[size] || 0;
    result[size] += 1;
  }

   return result;
}

console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 1, "6": 1 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 1, "7": 2 }
console.log(wordSizes("What's up doc?"));                              // { "2": 1, "4": 1, "6": 1 }
console.log(wordSizes(''));                                            // {}