interface StringMap {
  [index: string]: string;
}

let dictionary: StringMap = {
  bottle: 'A holder of water.',
  table: 'A four legged plain surface.',
  speaker: 'A device that produces sounds.'
}

// Alternate
let anotherDictionary: Record<string, string> = {
  bottle: 'A holder of water.',
  table: 'A four legged plain surface.',
  speaker: 'A device that produces sounds.'
}