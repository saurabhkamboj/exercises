type Circle = {
  kind: 'circle';
  radius: number;
}

type Square = {
  kind: 'square';
  sideLength: number;
}

type Shape = Circle | Square;

function isCircle(arg: Shape): arg is Circle {
  return arg.kind === 'circle';
}

function getArea(arg: Shape): void {
  let area: number;
  
  if (isCircle(arg)) {
    area = Math.PI * (arg.radius ** 2);
  } else {
    area = arg.sideLength * arg.sideLength;
  }

  console.log(area);
}

getArea({ kind: "circle", radius: 10 })
getArea({ kind: "square", sideLength: 10 })

// Alternate
function getAreaAgain(shape: Shape): number {
  if (shape.kind === "circle") {
    return Math.PI * shape.radius ** 2;
  } else {
    return shape.sideLength ** 2;
  }
}