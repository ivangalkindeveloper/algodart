import 'package:algodart/src/utility/nodable.dart';
import 'package:algodart/src/data/node.dart';

abstract class IStack<T> {
  void push(
    T data,
  );

  T pop();
}

class Stack<T> extends Nodeble<T> implements IStack<T> {
  Stack({
    T? data,
  }) {
    if (data != null) {
      push(
        data,
      );
    }
  }

  @override
  void push(
    T data,
  ) {
    final INode<T> node = Node<T>(
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

    final INode<T> popped = head!;
    head = popped.next;
    return popped.value;
  }
}
