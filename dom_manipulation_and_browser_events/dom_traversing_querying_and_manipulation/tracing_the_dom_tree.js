function domTreeTracer(id) {
  let domTree = [];
  let currentElement = document.getElementById(id); // document.querySelector(`#\\31`);
  let parentElement;

  do {
    parentElement = currentElement.parentNode;
    let children = getNodeNames(parentElement.children);
    domTree.push(children);

    currentElement = parentElement;
  } while (parentElement.nodeName !== 'BODY');

  return domTree;
}

function getNodeNames(collection) {
  let array = Array.from(collection);
  return array.map((node) => node.nodeName);
}