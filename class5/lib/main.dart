import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Image display'),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Image.asset('assets/images/rengoku.jpg'),
//               Image.asset('assets/images/rengoku.jpg'),
//               Image.asset('assets/images/rengoku.jpg'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Data Table Demo'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Center(
//               child: Text(
//                 'Student Table Information',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             DataTable(columns: [
//               DataColumn(label: Text('Roll No')),
//               DataColumn(label: Text('Name')),
//               DataColumn(label: Text('Subject')),
//             ], rows: [
//               DataRow(cells: [
//                 DataCell(Text('100')),
//                 DataCell(Text('John')),
//                 DataCell(Text('CSE')),
//               ]),
//               DataRow(cells: [
//                 DataCell(Text('200')),
//                 DataCell(Text('Cena')),
//                 DataCell(Text('Science')),
//               ]),
//               DataRow(cells: [
//                 DataCell(Text('300')),
//                 DataCell(Text('Tim')),
//                 DataCell(Text('Music')),
//               ]),
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const _title = 'Button';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: MyNewApp(),
//     );
//   }
// }
//
// class MyNewApp extends StatelessWidget {
//   const MyNewApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Elevated Button'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             ElevatedButton(onPressed: () { // null will disable the button
//               ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('You are trying to connect to my portal'))
//               );
//             }, child: Text('Login'))
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: new MyApp(),
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// // State is information of the app that can change over time or when some dynamic actions are taken
// class _MyAppState extends State<MyApp> {
//   String _value = '';
//
//   void _onClicked() => setState(() => _value = new DateTime.now().toString());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Time'),
//         backgroundColor: Colors.red,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _onClicked,
//         backgroundColor: Colors.red,
//         // if you set mini to true it will make your FAB(Floating Action Button) small
//         mini: false,
//         child: Icon(Icons.timer),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Text(_value),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flat Button Demo'),
//         ),
//         body: Center(
//           child: Column(children: <Widget>[
//               Container(
//                 child: TextButton(
//                   child: Text('Login'),
//                   onPressed: () {},
//                 ),
//               ),
//             Container(
//               child: TextButton(
//                 child: Text('password'),
//                 onPressed: () {},
//               ),
//             )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: new ThemeData(primarySwatch: Colors.deepOrange),
      home: new CounterDemo(),
    );
  }
}

class CounterDemo extends StatefulWidget {
  const CounterDemo({Key? key}) : super(key: key);

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n > 0) {
        _n--;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Can\'t go under 0')));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Container(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: add,
              child: new Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            Text(
              '$_n',
              style: new TextStyle(fontSize: 50),
            ),
            new FloatingActionButton(
              onPressed: minus,
              child: new Icon(
                Icons.remove,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}
