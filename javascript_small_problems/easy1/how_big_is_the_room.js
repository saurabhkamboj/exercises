const METER_TO_FEET = 10.7639;

let rlSync = require('readline-sync');
let length = rlSync.question('Enter the length of the room in meters: ');
let width = rlSync.question('Enter the width of the room in meters: ');

let areaInMeters = (Number(length) * Number(width)).toFixed(2);
let areaInFeet = (areaInMeters * METER_TO_FEET).toFixed(2);
console.log(`The area of the room is ${areaInMeters} square meters (${areaInFeet} square feet).`);
