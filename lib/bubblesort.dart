void main(List<String> args) {}

extension SwappableList<E> on List<E> {
  void swap(int indexA, int indexB) {
    final temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
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
