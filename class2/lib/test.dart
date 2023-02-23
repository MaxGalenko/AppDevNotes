class Student {
  var stdName;
  var stdAge;

  Student(String name, int age) {
    print("The name is: ${name}");
    print("The age is: ${age}");
  }

  void set std_name(String name) {
    this.stdName = name;
  }

  void set std_age(String age) {
    this.stdAge = age;
  }

  // defining class function
  showStdInfo() {
    print("Student Name is: ${stdName}");
    print("Student Age is: ${stdAge}");
  }
}

class Parent {
  Parent() {
    print("This is the super class constructor");
  }
}

class Child extends Parent {
  Child():super() {
    print("This is the sub class constructor");
  }
}

void main() {
  var list1 = new List.filled(2,0);
  list1[0] = 10;
  list1[1] = 11;
  print(list1);

  print("initializing the Set");
  var names = <String>{"James", "Ricky", "Devansh", "Adam"};
  print(names);

  int sum(int a, int b){
    return a + b;
  }

  var s = sum(20, 30);
  print(s);

  void number(int n) {
    if (n % 2 == 0)
      print("number is even");
    else
      print("number is odd");
  }
  number(20);

  var list = ["James", "Patrick", "Mathew", "Tom"];
  print("Example of anonymous function");
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  var std = new Student("Peter", 123);
  std.showStdInfo();

  Child c = new Child();
}

