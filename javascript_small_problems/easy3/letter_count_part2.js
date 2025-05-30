function wordSizes(string) {
  const words = string.split(' ');
  const result = {};

  for (let word of words) {
    word = word.replace(/[^a-z]/gi, '');
    let size = word.length;
    if (size === 0) continue;

    result[size] = result[size] || 0;
    result[size] += 1;
  }

   return result;
}

console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 2 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 3 }
console.log(wordSizes("What's up doc?"));                              // { "5": 1, "2": 1, "3": 1 }
console.log(wordSizes(''));                                            // {}