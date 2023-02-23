import 'dart:io';

void main() {
  print("hello this is my first Dart program");
  print(12 / 4);
  print(false);

  //numbers
  int score = 23;
  var count = 24; // it is inferred as integer automatically by the compiler
  double percentage = 84.5;
  double exponents = 1.42e5;
  print(percentage);
  print(exponents);

  //strings
  String name = "Sakku";
  var company = "Google";

  //boolean
  bool isValid = true;
  var isAlive = false;

  print(isAlive);

  //literals

  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'It\'s easy';
  String s4 = "It's easy";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  String s5 = 'this is going to be a very long string'
      'this is just a sample string in dart programming';
  print(s5);

  //string Interpolation: use [my name is $name"] instead of
  // ["myname is " + name]

  String name1 = "kevine";
  print("My name is $name1");
  print("the number of chars in name1 is ${name1.length}");

  int l = 10;
  int b = 20;

  print("the sum of $l and $b is ${l + b}");
  print("the area of rectangle with length $l and breadth $b is ${l * b}");

  //exercise 1 : swap the two variables

  int num1 = 10;
  int num2 = 20;

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print(num1);
  print(num2);

// final

  final cityName = "Montreal";
//cityName = "NY"; it is not possible because cityName has final keyword

//const

  const PI = 3.14;
  const double gravity = 9.8;
  print(gravity);

//if else statements

  var salary = 15000;
  if (salary > 20000)
    print("you got promoted");
  else
    print("you need to work hard");

//if else ladder statements
  var marks = 80;
  if (marks >= 90 && marks <= 100)
    print("A+ grade");
  else if (marks >= 80 && marks < 90)
    print("B+ grade");
  else
    print("you need to work hard once more");

// conditional Expressions
//condition ? expr1 : expr2
// if condition is true, evaluates the expr1 (and returns its value);
//otherwise, evaluates and returns the value of expr2;

  int q = 3;
  int e = 4;
  int smallnumber = q < e ? q : e;
  print('$smallnumber is smaller');

//switch

  String grade = 'A';

  switch (grade) {
    case 'A':
      print("Excellent grade");
      break;

    case 'B':
      print("good grade");
      break;
    default:
      print("not enough");
  }

//exercise 2 - find the smallest number of given any three numbers
// 19, 45, -3 : the answer is -3

  int n1 = 10;
  int n2 = 20;
  int n3 = 400;

  if (n1 < n2 && n1 < n3)
    print("n1 is smallest");
  else if (n2 < n1 && n2 < n3)
    print("n2 is smallest");
  else
    print("n3 is smallest");

  // for loop

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    };
  }

  // while

  var i = 1;
  while (i <= 10) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  }


//first pyramid program

  for (int i = 1; i <= 5; i++) {
    for(int j = 1; j<=i; j++) {
      stdout.write(j);
    }
    print("");
  }

  int fib1 = 0;
  int fib2 = 1;
  print(fib1);
  print(fib2);

  for (int i = 0; i<= 8; i++) {
    int next = fib1 + fib2;
    print(next);
    fib1 = fib2;
    fib2 = next;
  }
}

// WAP = write a program
// exercise number 4 : WAP to reverse a number
// exercise number 5 : WAP to print the first 10 Fibonnaci series