void main() async {
  // value is non-nullable (can't be null)
  int productId = 20;
  // int productId = null;

  // ? after data type
  // value can be null
  String? name;
  // can give value
  name = "John";
  // can make it null
  name = null;

  print(name);
  
  print(checkValue(5));
  print(checkValue(null));

  int? maybeValue = 42;
  int value = maybeValue;
  
  print(value);

  String? input;
  String message = input ?? 'Error';
  print(message);


  // print('start fetching recipes');
  //
  // Future.delayed(Duration(seconds: 5), () {
  //   print('recipes fetched');
  // }).then((_) {
  //   print('after fetching recipes');
  // });
  //
  // String computation1 = 'a random computation';
  // print(computation1);

  // print('start fetching recipes');
  //
  // await Future.delayed(Duration(seconds: 1), () {
  //   print('recipes fetched');
  // });
  //
  // print('after fetching recipes');
  //
  // String computation2 = 'a random computation';
  // print(computation2);


  Future.delayed(Duration(seconds: 1), () {
    print('inside delayed 1');
  }).then((_) {
    print('inside then 1');
  });

  Future.delayed(Duration(seconds: 1), () {
    print('inside delayed 2');
  }).then((_) {
    print('inside then 2');
  });

  print('after delayed');

  List<int> ages = [10, 20, 30];
  List<String> names = ['John', 'Bob', 'Max'];
  var mixed = [10, 'Hayk', 20];

  var list = List<int>.filled(5, 5);
  print(list);

  print(list.indexOf(5));

  mixed.forEach((n) => print(n));

  var doubleList = ages.map((n) => n * 2);
  print(doubleList);

  var combinedList = [...ages, ...names, ...mixed];
  print(combinedList);

  bool sad = false;
  var cart = ['milk', 'ghee', if(sad) 'beer'];
  print(cart);

  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> evenNumbers = numbers.where((number) => number.isEven).toList();
  print(evenNumbers);
}

int checkValue(int? value) {
  if(value == null) {
    return 0;
  }
  return value.abs();
}