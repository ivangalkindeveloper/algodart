import 'package:algodart/src/sctucture/nodable.dart';
import 'package:algodart/src/data/node.dart';

abstract class IStack<T> {
  void push(T data);

  T pop();
}

class Stack<T> extends Nodeble<T> implements IStack<T> {
  Stack({
    T? data,
  }) {
    if (data != null) {
      head = Node(
        value: data,
      );
    }
  }

  @override
  void push(T data) {
    final Node<T> node = Node<T>(
      value: data,
    );
    if (head == null) {
      head = node;
    } else {
      node.next = head;
      head = node;
    }
  }

  @override
  T pop() {
    if (head == null) {
      throw RangeError("Pop from empty stack");
    }

    final Node<T> poppedNode = head!;
    head = poppedNode.next;
    return poppedNode.value;
  }
}
