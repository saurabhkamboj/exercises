function bind(func, context, ...partialArgs) {
  return function(...args) {
    return func.apply(context, partialArgs.context(args));
  }
}