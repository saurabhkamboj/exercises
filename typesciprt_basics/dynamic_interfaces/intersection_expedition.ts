interface Dog {
  bark(): void;
}

interface Cat {
  meow(): void;
}

type Pet = Dog & Cat

let manny: Pet = {
  bark() {
    console.log('Woof');
  },

  meow() {
    console.log('Meow');
  },
}

manny.bark();
manny.meow();