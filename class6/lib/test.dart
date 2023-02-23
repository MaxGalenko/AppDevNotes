void main() {
  Set<String> fruits1 = {"Banana", "Apple", "Orange"};
  Set<String> fruits2 = {"Orange", "Grape", "Berries"};

  final differenceSet = fruits1.difference(fruits2);
  print(differenceSet);

  final intersectionSet = fruits1.intersection(fruits2);
  print(intersectionSet);

  Map<String, double> expenses = {
    'sun' : 300.0,
    'mon' : 300.0,
    'tue' : 263.0,
  };

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of Map is: ${expenses.length}");
  
  print("Does Map contain key sun: ${expenses.containsKey('sun')}");
  print("Does Map contain key abc: ${expenses.containsKey('abc')}");
  
  print("Does Map contain value 300.0: ${expenses.containsValue('300.0')}");
  print("Does Map contain value 100.0: ${expenses.containsValue('100.0')}");

  Map<String, String> countryCapital = {
    'USA' : 'Nothing',
    'India' : 'New Delhi',
    'China' : 'Beijing',
  };

  // updating an item
  countryCapital['USA'] = 'Washington D.C.';
  print(countryCapital);

  Map<String, dynamic> book = {
    'title' : 'Misson Mangal',
    'author' : 'Kuber Singh',
    'pages' : 233,
  };

  for(MapEntry book in book.entries) {
    print('Key is ${book.key}, value is ${book.value}');
  }

  Map<String, double> marks = {
    'ram' : 30,
    'mark' : 98,
    'harry' : 56,
    'john' : 12,
  };

  marks.removeWhere((key, value) => value < 32);
  print(marks);
}