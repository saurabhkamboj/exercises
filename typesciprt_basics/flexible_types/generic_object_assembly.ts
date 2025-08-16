interface KeyValuePair<Key, Value> {
  key: Key;
  value: Value;
}

let foo: KeyValuePair<string, number> = {
  key: 'number',
  value: 9,
}

let bar: KeyValuePair<number, string> = {
  key: 9,
  value: 'Number',
}