function twice(number) {
  let string = String(number);
  let size = string.length;

  if (size % 2 !== 0) return number * 2;
  if (string.slice(0, size / 2) === string.slice(size / 2)) {
    return number;
  } else {
    return number * 2;
  }
}

console.log(twice(37));          // 74
console.log(twice(44));          // 44
console.log(twice(334433));      // 668866
console.log(twice(444));         // 888
console.log(twice(107));         // 214
console.log(twice(103103));      // 103103
console.log(twice(3333));        // 3333
console.log(twice(7676));        // 7676