const DEGREE = '\u00B0';
const DEGREE_TO_MINUTES = 60;
const MINUTE_TO_SECONDS = 60;

/*
minutes = (degree * 60) % 60
second = (minutes * 60) % 60
*/

function dms(degrees) {
  let minutes = (degrees * DEGREE_TO_MINUTES) % DEGREE_TO_MINUTES;
  let seconds = (minutes * MINUTE_TO_SECONDS) % MINUTE_TO_SECONDS;

  return (`${Math.floor(degrees)}${DEGREE}` +
    `${format(minutes)}'` + `${format(seconds)}"`);
}

function format(number) {
  let string = String(Math.floor(number));
  return (string.length === 1 ? 0 + string : string);
}

// All test cases should return true
console.log(dms(30) === "30°00'00\"");
console.log(dms(76.73) === "76°43'48\"");
console.log(dms(254.6)) //=== "254°35'59\"");
console.log(dms(93.034773) === "93°02'05\"");
console.log(dms(0) === "0°00'00\"");
console.log(dms(360) === "360°00'00\"" || dms(360) === "0°00'00\"");