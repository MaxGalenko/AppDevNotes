// class A {
//   var first;
//   var _second;
//
//   get second => _second;
//
//   set second(value) {
//     _second = value;
//   }
//
//   void _printFields() {
//     print('First: $first, second: $_second');
//   }
// }

class Student {
  var _stdName = "Max";
  var _stdAge = 19;

  get stdAge => _stdAge;

  set stdAge(value) {
    _stdAge = value;
  }

  get stdName => _stdName;

  set stdName(value) {
    _stdName = value;
  }
}

testParam(n1, {s1:12, s2}) {
  print(n1);
  print(s1);
}

int pow(int x, [int y = 2]) {
  int r = 1;
  for(int i = 0; i < y; i++) {
    r *= x;
  }
  return r;
}

int inc(int x) => ++x;

int dec(int x) => --x;

int apply(int x, Function f) {
  return f(x);
}

class Employee {
  Employee() {
    print("Inside the Constructor");
  }

  Employee.namedConst(String stCode) {
    print(stCode);
  }
}

class Laptop {
  // Constructor
  Laptop(String name, String color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook(String name, String color) : super(name, color) {
    print("MacBook constructor");
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Student1 extends Person {
  int rollNumber;

  Student1(String name, int age, this.rollNumber) : super(name, age);
}

void main() {
  // A a = new A();
  // a.first = 'New first';
  // a._second = 'New second';
  // print('${a.first}: ${a._second}');
  // a._printFields();

  Student student = new Student();
  student.stdName = "Sakku";
  student.stdAge = 47;

  print("Student name is: ${student.stdName}");
  print("Student age is: ${student.stdAge}");

  // returnType functionName(parameters) => expression
  var add = (int x, int y) => x + y;
  print(add(12, 14));

  testParam(123);

  print(pow(12));
  print(pow(12, 3));

  var words = ['sky', 'cloud'];

  words.forEach((word) {
    print('$word has ${word.length} characters');
  });

  int r1 = apply(3, inc);
  int r2 = apply(4, dec);
  print(r1);
  print(r2);

  Employee emp1 = new Employee();
  Employee emp2 = new Employee.namedConst("stCode");

  var macbook = MacBook("Macbook Pro", "Silver");

  var student1 = Student1("John", 12, 007);
  print(student1.name);
  print(student1.age);
  print(student1.rollNumber);

  print(null ?? 5);

  var value;
  value ??= 5;
  print(value);

  var value2;
  print(value2?.toLowerCase());
}