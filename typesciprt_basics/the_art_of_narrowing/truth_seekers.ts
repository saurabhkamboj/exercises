function isStringArray(arg: Array<unknown>): arg is Array<string> {
  return arg.every((value) => typeof value === 'string');
}

isStringArray([1, 2, 3]); // false
isStringArray(["test", "string"]); // true