function filterByType<T>(array: Array<any>, type: string): Array<T> {
  return array.filter((value) => typeof value === type);
}