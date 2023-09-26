import 'package:algodart/src/data/node.dart';

class Nodeble<T> {
  Node<T>? head;

  int get length {
    if (this.head == null) {
      return 0;
    }

    int count = 0;
    Node<T>? current = this.head;
    while (current != null) {
      count++;
    }
    return count;
  }

  bool get isEmpty => this.head == null;

  bool get isNotEmpty => this.head != null;

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer();
    Node<T>? current = this.head;

    while (current != null) {
      buffer.write(current.value.toString());
      current = current.next;
    }
    return buffer.toString();
  }
}
