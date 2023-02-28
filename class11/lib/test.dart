import 'dart:collection';

void main() {
  HashMap map1 = new HashMap<int, String>();
  LinkedHashMap map2 = new LinkedHashMap<int, String>();
  SplayTreeMap map3 = new SplayTreeMap<int, String>();

  map1[1] = 'A';
  print('map1: $map1');

  map1.putIfAbsent(1, () => 'AZ');
  map1.putIfAbsent(2, () => 'B');
  print('map1: $map1');
  
  print('map1 length: ${map1.length}');

  map1.update(1, (e) => '${e}A', ifAbsent: () => 'A');
  map1.update(3, (e) => '${e}C', ifAbsent: () => 'C');

  print('map1: $map1');
  
  print('Value of 1: ${map1[1]}');

  map1.remove(2);
  print('map1: $map1');

  map1.removeWhere((key, value) => key % 2 == 0 || value == 'C');
  print('map1: $map1');

  map1[4] = 'D';
  map1[5] = 'E';

  map1.forEach((key, value) {
    print('key: $key, value: $value');
  });

  var mappedHashMap = map1.map((key, value) {
    return new MapEntry(key, '$value mapped');
  });

  print('mappedHashMap: $mappedHashMap');
  
  map1.clear();
  print('map1: $map1');

  var words1 = {
    1: 'sky',
    2: 'fly',
    3: 'ribbon',
    4: 'falcon',
    5: 'rock',
    6: 'ocean',
    7: 'cloud',
  };

  words1.remove(1);
  print(words1);

  words1.removeWhere((key, value) => value.startsWith('f'));
  print(words1);

  words1.clear();
  print(words1);

  var letters = ['I', 'II', 'V', 'X', 'L'];
  var numbers = [1, 2, 5, 10, 50];

  var data1 = Map<String, int>.fromIterables(letters, numbers);
  print(data1);

  var words2 = ['sky', 'fly', 'ribbon', 'falcon', 'rock', 'ocean', 'cloud'];

  var i = 0;
  var data2 = {
    for(var e in words2)
      if(e.length == 3)
        i++: e
  };

  print(data2);

  var f1 = {1: 'Apple', 2: 'Orange'};
  var f2 = {3: 'Banana', 4: 'Plum'};
  var f3 = {5: 'Mango'};

  var fruit1 = {}..addAll(f1)..addAll(f2)..addAll(f3);
  print(fruit1);

  var fruit2 = Map.from(f1)..addAll(f2)..addAll(f3);
  print(fruit2);

  var fruit3 = {...f1, ...f2, ...f3};
  print(fruit3);

  fruit1.forEach((key, value) {
    print('{key: $key, value: $value}');
  });

  print('--------------------');

  fruit1.entries.forEach((element) {
    print('{key: ${element.key}, value: ${element.value}}');
  });

  print('--------------------');

  for(var key in fruit1.keys) print(key);
  for(var value in fruit1.values) print(value);

  var sortedByValue = new SplayTreeMap<int, String>.from(fruit1, (key1, key2) => fruit1[key1].compareTo(fruit1[key2]));
  print(sortedByValue);
}