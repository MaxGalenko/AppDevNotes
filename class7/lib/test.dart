import 'dart:math';

class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);
  
  void printProfile() {
    print("Name: ${name ?? "Unknown"}");
    print("Bio: ${bio ?? "Not Provided"}");
  }
}

// void printLength(String? str) {
//   if(str == null) {
//     throw Exception("The string is null");
//   }
//   print("Length of string is ${str.length}");
// }

class DataProvider {
  String? get stringorNull => Random().nextBool() ? "Hello" : null;

  void myMethod() {
    String? value = stringorNull;

    if(value is String) {
      print("The length of value is ${value.length}");
    }else {
      print("The value is not string.");
    }
  }
}

late String name;

class Person {
  late String name;

  void greet() {
    print("Hello $name");
  }
}

String provideCountry() {
  print("Function is called");
  return "USA";
}

class Human {
  late String fullName = _getFullName();
  late String firstName = fullName.split(" ").first;
  late String lastName = fullName.split(" ").last;

  String _getFullName() {
    print("_getFullName is called");
    return "John Doe";
  }
}

Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

int namedSum({required int a, required int b}) {
  return a + b;
}

String namedGreetings({String? name, required int numberOfTimes}) {
  if(name != null) {
    return 'Hello $name ' * numberOfTimes;
  }else {
    return 'Hi ' * numberOfTimes;
  }
}

class Pair<T> {
  T x;
  T y;
  Pair(this.x, this.y);
}

abstract class Shape {
  double get area;
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double get area => 3.14 * radius * radius;
}

class Square extends Shape {
  double length;

  Square({required this.length});

  @override
  double get area => length * length;
}

class Region<T extends Shape> {
  List<T> shapes;

  Region({required this.shapes});

  double get area {
    double totalArea = 0;
    for(var shape in shapes) {
      totalArea += shape.area;
    }
    return totalArea;
  }
}

void main() {
  Profile profile1 = Profile("John", "Software engineer and avid reader");
  profile1.printProfile();

  Profile profile2 = Profile("Jane", null);
  profile2.printProfile();

  Profile profile3 = Profile(null, "Loves to travel and try new foods");
  profile3.printProfile();

  Profile profile4 = Profile(null, null);
  profile4.printProfile();

  String result;

  if(DateTime.now().hour < 12) {
    result = "Good morning";
  }else {
    result = "Good afternoon";
  }

  print("Result is $result");
  print("Length of result is ${result.length}");

  // printLength("Hello");
  // printLength(null);

  DataProvider().myMethod();

  name = "John";
  print(name);

  Person person = Person();
  person.name = "John";
  person.greet();

  print("Starting");
  late String value = provideCountry();
  print("End");
  print(value);

  print("Start");
  Human human = Human();
  print("First name: ${human.firstName}");
  print("Last name: ${human.lastName}");
  print("Full name: ${human.fullName}");
  print("End");

  print("Start");
  getUserName().then((value) => print(value));
  print("End");

  print(namedSum(a: 1, b: 1));

  print(namedGreetings(name: 'Sarunw', numberOfTimes: 3));
  print(namedGreetings(numberOfTimes: 3));

  var pairInt = Pair(10, 20);
  print('x=${pairInt.x}, y=${pairInt.y}');
  
  var pairStr = Pair('A', 'B');
  print('x=${pairStr.x}, y=${pairStr.y}');
  
  var region = Region(
      shapes: [Circle(radius: 10),
               Square(length: 10),
               Square(length: 10)]);
  print(region.area);
}