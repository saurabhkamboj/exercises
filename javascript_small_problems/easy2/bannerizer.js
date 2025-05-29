function logInBox(string) {
  let width = string.length + 2;
  let borderLine = '+' + '-'.repeat(width) + '+';
  let defaultLine = '|' + ' '.repeat(width) + '|';

  console.log(borderLine);
  console.log(defaultLine);
  console.log('|' + ` ${string} ` + '|');
  console.log(defaultLine);
  console.log(borderLine);
}

logInBox('To boldly go where no one has gone before.');