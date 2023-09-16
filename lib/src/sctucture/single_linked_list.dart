import 'package:algodart/src/data/single_linked_list_node.dart';

abstract class _ISingleLinkedList<T> {
  SingleLinkedListNode<T>? head;

  void add(T data);

  bool has(T target);

  void remove(T target);

  void reverse();
}

class SingleLinkedList<T> implements _ISingleLinkedList<T> {
  SingleLinkedList({
    T? data,
  }) {
    if (data != null) {
      head = SingleLinkedListNode(
        value: data,
      );
    }
  }

  @override
  SingleLinkedListNode<T>? head;

  @override
  void add(T data) {
    if (this.head == null) {
      this.head = SingleLinkedListNode(
        value: data,
      );
      return;
    }

    SingleLinkedListNode<T>? current = this.head;

    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = SingleLinkedListNode(
      value: data,
    );
  }

  @override
  bool has(T target) {
    SingleLinkedListNode<T>? current = this.head;

    while (current != null) {
      if (current.value == target) {
        return true;
      } else {
        current = current.next;
      }
    }
    return false;
  }

  @override
  void remove(T target) {
    if (this.head?.next == target) {
      this.head = this.head?.next;
      return;
    }

    SingleLinkedListNode<T>? current = this.head;
    SingleLinkedListNode<T>? previos;

    while (current != null) {
      if (current.value == target) {
        previos?.next = current.next;
      }
      previos = current;
      current = current.next;
    }
  }

  @override
  void reverse() {
    SingleLinkedListNode<T>? current = this.head;
    SingleLinkedListNode<T>? previos;

    while (current != null) {
      final SingleLinkedListNode<T>? next = current.next;
      current.next = previos;
      previos = current;
      current = next;
    }
    this.head = previos;
  }

  T operator [](int index) {
    int count = 0;
    SingleLinkedListNode<T>? current = this.head;

    while (current != null) {
      if (index == count) {
        return current.value;
      } else {
        current = current.next;
      }
    }
    throw RangeError.index(index, count);
  }

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer();
    SingleLinkedListNode<T>? current = this.head;

    while (current != null) {
      buffer.write(current.value.toString());
      current = current.next;
    }
    return buffer.toString();
  }
}
