function century(year) {
  let string = String(year);
  if (string.length <= 2) return '1st';

  let newCentury = string.slice(-2) !== '00';
  let century = Number(string.slice(0, string.length - 2)) + (newCentury ? 1 : 0);
  
  return century + suffix(String(century));
}

function suffix(century) {
  let lastTwo = Number(century.slice(-2));
  if (lastTwo >= 11 || lastTwo <= 13) {
    return 'th';
  }

  switch (century.at(-1)) {
    case '1': return 'st';
    case '2': return 'nd';
    case '3': return 'rd';
    default: return 'th';
  }
}

console.log(century(2000));        // "20th"
console.log(century(2001));        // "21st"
console.log(century(1965));        // "20th"
console.log(century(256));         // "3rd"
console.log(century(5));           // "1st"
console.log(century(10103));       // "102nd"
console.log(century(1052));        // "11th"
console.log(century(1127));        // "12th"
console.log(century(11201));       // "113th"