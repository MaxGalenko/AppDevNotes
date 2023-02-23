import 'dart:io';

// Stack implementation
// class StackX {
//   int maxSize = 100;
//   List<int> stackArray = new List.filled(100, 0);
//   int top = 0;
//
//   void push(int j) {
//     stackArray[++top] = j;
//   }
//
//   int pop() {
//     return stackArray[top--];
//   }
//
//   int peek() {
//     return stackArray[top];
//   }
//
//   bool isEmpty() {
//     return (top == 0);
//   }
//
//   bool isFull() {
//     return (top == maxSize - 1);
//   }
//
//
// }
//
// void main() {
//   StackX stack = new StackX();
//   stack.push(10);
//   stack.push(30);
//   stack.push(100);
//   stack.push(98);
//   stack.push(31);
//
//   while(!stack.isEmpty()) {
//     int value = stack.pop();
//     stdout.write('$value ');
//   }
//
//   stdout.writeln();
// }

// Queue implementation
// class Queue {
//   int maxSize = 100;
//   List<int> queueArray = new List.filled(100, 0);
//   int front = 0;
//   int rear = -1;
//   int nItems = 0;
//
//   // Insert an item inside the queue
//   void insert(int item) {
//     if(rear == maxSize - 1) {
//       rear = -1;
//     }
//     queueArray[++rear] = item;
//     nItems++;
//   }
//
//   // Take an element from the front of the queue
//   int remove() {
//     int temp = queueArray[front++];
//     if(front == maxSize) {
//         front = 0;
//     }
//     nItems--;
//     return temp;
//   }
//
//   int peekFront() {
//     return queueArray[front];
//   }
//
//   bool isEmpty() {
//     return nItems == 0;
//   }
//
//   bool isFull() {
//     return nItems == maxSize;
//   }
// }
//
// void main() {
//   Queue queue = new Queue();
//   queue.insert(10);
//   queue.insert(22);
//   queue.insert(92);
//   queue.insert(100);
//   queue.insert(6);
//
//   queue.remove();
//   queue.remove();
//
//   while(!queue.isEmpty()) {
//     int value = queue.remove();
//     stdout.write('$value ');
//   }
//
//   stdout.writeln();
// }

// Bubble sortd
class ArrayBub {
  List<int> a = new List.filled(20, 0);
  int nElems = 0;

  void insert(int value) {
    a[nElems] = value;
    nElems++;
  }

  void display() {
    for(int i = 0; i < nElems; i++) {
      stdout.write('${a[i]} ');
    }
    stdout.writeln();
  }

  // Array sort using bubble method
  void  bubbleSort() {
    for(int i = nElems - 1; i > 1; i--) {
      for(int j = 0; j < i; j++) {
        if(a[j] > a[j + 1]) {
          swap(j, j + 1);
        }
      }
    }
  }

  void swap(int x, int y) {
    int temp = a[x];
    a[x] = a[y];
    a[y] = temp;
  }
}

void main() {
  int maxSize = 20;
  ArrayBub array = new ArrayBub();

  array.insert(77);
  array.insert(57);
  array.insert(27);
  array.insert(177);
  array.insert(707);
  array.insert(100);
  array.display();

  array.bubbleSort();
  array.display();
}