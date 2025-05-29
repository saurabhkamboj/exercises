function triangle(length) {
  for (let line = 1; line <= length; line += 1) {
    console.log(' '.repeat(length - line) + '*'.repeat(line));
  }
}

triangle(5);

//     *
//    **
//   ***
//  ****
// *****

triangle(9);

//         *
//        **
//       ***
//      ****
//     *****
//    ******
//   *******
//  ********
// *********