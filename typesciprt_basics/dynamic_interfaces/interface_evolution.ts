interface Person {
  name: string;
  age: number;
}

interface Employee extends Person {
  employeeId: number;
}

let foo: Employee = {
  name: 'John',
  age: 23,
  employeeId: 343,
}