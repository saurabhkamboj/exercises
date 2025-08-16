interface UserData {
  name: string;
  age: number;
  employed: boolean;
}

type Keys = keyof UserData;

function printUserData(user: UserData, key: Keys): void {
  console.log(user[key]);
}

let user: UserData = {
  name: 'John',
  age: 46,
  employed: true,
}