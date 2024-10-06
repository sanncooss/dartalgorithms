import 'package:bubblesort/bubblesort.dart';

void main(List<String> args) {
  final list = [9, 4, 10, 3];
  print('Original $list');
  selectionSort(list);
  print(list);
}

void selectionSort<E extends Comparable<dynamic>>(List<E> list) {
  for (var start = 0; start < list.length; start++) {
    var lowest = start;

    for (var next = start + 1; next < list.length; next++) {
      if (list[next].compareTo(list[lowest]) < 0) {
        lowest = next;
      }
    }
    if (lowest != start) {
      list.swap(lowest, start);
    }
  }
}
