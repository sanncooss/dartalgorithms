void main(List<String> args) {
  final list = [9, 4, 10, 3];
  print('Original list $list');
  bubbleSort(list);
  print(list);
}

extension SwappableList<E> on List<E> {
  // for swapping values between two indices
  void swap(int indexA, int indexB) {
    final temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  // counts the passes, it compares each less value with itself, shortens the list by one
  for (var end = list.length - 1; end > 0; end--) {
    var swapped = false;

    for (var current = 0; current < end; current++) {
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        swapped = true;
      }
    }
    if (!swapped) return;
  }
}
