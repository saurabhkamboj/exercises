type Device = {
  manufacturer: string;
  model: string;
  year: number;
}

let computer: Device = {
  manufacturer: 'Apple',
  model: 'MacBook Pro',
  year: 2006,
}

let smartPhone: Device = {
  manufacturer: 'Samsung',
  model: 'Flip 5',
  year: 2024,
}

let anotherPhone = {
  manufacturer: 'Apple',
  model: 'iPhone 6',
  year: 2015,
  headphoneJack: true,
}

let oneMorePhone: Device = anotherPhone;