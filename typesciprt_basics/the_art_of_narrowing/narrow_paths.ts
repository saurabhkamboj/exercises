function printLength(value: string | string[]): void {
  if (Array.isArray(value)) {
    console.log(`Array count: ${value.length}`);
  } else if (typeof value === 'string') {
    console.log(`String length: ${value.length}`);
  } else {
    console.log('Invalid value!');
  }
}

printLength('hello');
printLength(["hello", "world"]);

// Better alternate
function printLengthAgain(value: string | string[]): void {
  if (typeof value === 'string') {
    console.log(`String lenght: ${value.length}`);
  } else {
    console.log(`Array count: ${value.length}`);
  }
}