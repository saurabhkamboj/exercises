function bubbleSort(array) {
  let size = array.length;
  let swapped;

  do {
    swapped = false;
    for (let index = 1; index < size; index += 1) {
      if (array[index - 1] > array[index]) {
        [array[index - 1], array[index]] = [array[index], array[index - 1]];
        swapped = true;
      }
    }
    size -= 1;
  } while (swapped)
}

const array1 = [5, 3];
bubbleSort(array1);
console.log(array1);    // [3, 5]

const array2 = [6, 2, 7, 1, 4];
bubbleSort(array2);
console.log(array2);    // [1, 2, 4, 6, 7]

const array3 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
bubbleSort(array3);
console.log(array3);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]