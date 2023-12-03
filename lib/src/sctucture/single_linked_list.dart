import 'package:algodart/src/utility/nodable.dart';
import 'package:algodart/src/data/node.dart';

abstract class ISingleLinkedList<T> {
  void add(
    T data,
  );

  bool contains(
    T target,
  );

  void remove(
    T target,
  );

  void reverse();
}

class SingleLinkedList<T> extends Nodeble<T> implements ISingleLinkedList<T> {
  SingleLinkedList({
    T? data,
  }) {
    if (data != null) {
      add(
        data,
      );
    }
  }

  @override
  void add(
    T data,
  ) {
    if (head == null) {
      head = Node(
        value: data,
      );
      return;
    }

    INode<T>? current = head;
    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = Node(
      value: data,
    );
  }

  @override
  bool contains(
    T target,
  ) {
    INode<T>? current = head;
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
  void remove(
    T target,
  ) {
    if (head?.next == target) {
      head = head?.next;
      return;
    }

    INode<T>? current = head;
    INode<T>? previos;
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
    INode<T>? current = head;
    INode<T>? previos;
    while (current != null) {
      final INode<T>? next = current.next;
      current.next = previos;
      previos = current;
      current = next;
    }
    head = previos;
  }

  T operator [](int index) {
    int count = 0;
    INode<T>? current = head;
    while (current != null) {
      if (index == count) {
        return current.value;
      } else {
        current = current.next;
      }
    }
    throw RangeError.index(index, count);
  }
}
