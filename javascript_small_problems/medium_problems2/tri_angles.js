function triangle(angle1, angle2, angle3) {
  let [small, middle, large] = [angle1, angle2, angle3].sort((a, b) => a - b);

  if (small === 0) return 'invalid';
  if (small + middle + large !== 180) return 'invalid';
  if ([small, middle, large].every(angle => angle < 90)) return 'acute';
  if (large === 90) return 'right';
  return 'obtuse';
}

console.log(triangle(60, 70, 50));       // "acute"
console.log(triangle(30, 90, 60));       // "right"
console.log(triangle(120, 50, 10));      // "obtuse"
console.log(triangle(0, 90, 90));        // "invalid"
console.log(triangle(50, 50, 50));       // "invalid"