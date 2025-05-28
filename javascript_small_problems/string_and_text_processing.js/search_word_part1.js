const text = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?';

function searchWord(matchWord, string) {
  let regex = new RegExp(matchWord, 'gi');
  let matches = string.match(regex);

  return matches ? matches.length : 0;
}

// Further exploration
function searchWord(matchWord, string) {
  return string.split(' ')
    .filter(word => {
      word = word.replace(/[^a-z]/gi, '');
      return word.toLowerCase() === matchWord;
    }).length;
}

// Alternate that works
function searchWord(matchWord, string) {
  let regex = new RegExp('\\b' + matchWord + '\\b', 'gi');
  let matches = string.match(regex);

  return matches ? matches.length : 0;
}

console.log(searchWord('sed', text));      // 3