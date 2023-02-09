import 'node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool isEmpty() => head == null;

  @override
  String toString() {
    return '${head.toString()}';
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
  if (isEmpty()) {
    push(value);
    return;
  }

  tail!.next = Node(value: value);
  tail = tail!.next;
}

Node<E>? nodeAt(int index) {
  // 1
  var currentNode = head;
  var currentIndex = 0;

  // 2
  while (currentNode != null && currentIndex < index) {
    currentNode = currentNode.next;
    currentIndex += 1;
  }
  return currentNode;
}

Node<E> insertAfter(Node<E> node, E value) {
  // 1
  if (tail == node) {
    append(value);
    return tail!;
  }

  // 2
  node.next = Node(value: value, next: node.next);
  return node.next!;
}


}

void main(List<String> args) {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);

  print(list);
}
