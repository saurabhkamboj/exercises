function printId(value: string | number): void {
  if (typeof value === 'string') {
    console.log('Your ID is a string');
  } else if (typeof value === 'number') {
    console.log('Your ID is number');
  } else {
    console.log('Invalid value!');
  }
}

printId(101);
printId('202');

// Remember; Type guards allow us to check the type of a value at runtime within typescript