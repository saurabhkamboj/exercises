const LARGEST_FEATURED_NUMBER = 9876543201;

function featured(number) {
  for (number += 1; number <= LARGEST_FEATURED_NUMBER; number += 1) {
    if (number % 2 !== 0 && number % 7 === 0 && !repeatsDigit(number)) {
      return number;
    }
  }

  return 'There is no possible number that fulfills those requirements.';
}

function repeatsDigit(number) {
  let digits = String(number);
  for (let digit of digits) {
    let regex = new RegExp(digit, 'g');
    if (digits.match(regex).length > 1) return true;
  }

  return false;
}

// Good suggestion by LSBot
function featured(number) {
  let candidate = number + 1;

  while (candidate % 2 === 0 || candidate % 7 !== 0) {
    candidate += 1;
  }

  for (; candidate <= LARGEST_FEATURED_NUMBER; candidate += 14) {
    if (!repeatsDigit(candidate)) {
      return candidate;
    }
  }

  return 'There is no possible number that fulfills those requirements.';
}

function repeatsDigit(candidate) {
  let digits = String(candidate);
  let seen = {};
  for (let digit of digits) {
    if (seen[digit]) return true;
    seen[digit] = true;
  }

  return false;
}

console.log(featured(12));           // 21
console.log(featured(20));           // 21
console.log(featured(21));           // 35
console.log(featured(997));          // 1029
console.log(featured(1029));         // 1043
console.log(featured(999999));       // 1023547
console.log(featured(999999987));    // 1023456987
console.log(featured(9876543186));   // 9876543201
console.log(featured(9876543200));   // 9876543201
console.log(featured(9876543201));   // "There is no possible number that fulfills those requirements."