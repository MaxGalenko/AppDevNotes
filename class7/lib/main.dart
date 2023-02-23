import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Welcome to amazing flutter",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("This is cool"),
//         ),
//         body: Center(
//           child: Text(
//               "Valentines day",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("List View Demo"),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//               height: 50,
//               color: Colors.red,
//               child: Center(
//                 child: Text("Apple"),
//               ),
//             ),
//             Container(
//               height: 50,
//               color: Colors.orange,
//               child: Center(
//                 child: Text("Orange"),
//               ),
//             ),
//             Container(
//               height: 50,
//               color: Colors.yellow,
//               child: Center(
//                 child: Text("Banana"),
//               ),
//             ),
//             Container(
//               height: 50,
//               color: Colors.pink,
//               child: Center(
//                 child: Text("Cherry"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   double iconSize = 40;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter Table"),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Icon(Icons.account_box, size: iconSize,),
//                             Text("My Account")
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Icon(Icons.settings, size: iconSize,),
//                             Text("My Settings")
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Icon(Icons.light_mode_outlined, size: iconSize,),
//                             Text("My Ideas")
//                           ],
//                         ),
//                       ]
//                     ),
//                     TableRow(
//                         children: [
//                           Column(
//                             children: [
//                               Icon(Icons.account_box, size: iconSize,),
//                               Text("My Account")
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.settings, size: iconSize,),
//                               Text("My Settings")
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.light_mode_outlined, size: iconSize,),
//                               Text("My Ideas")
//                             ],
//                           ),
//                         ]
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length: 2, child: Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(
//           tabs: [
//             Tab(
//               icon: Icon(Icons.android), text: "My Android space",
//             ),
//             Tab(
//               icon: Icon(Icons.phone_iphone), text: "My IOS space",
//             ),
//           ],
//         ),
//         title: Text("Tab Bar Demonstration"),
//       ),
//       body: TabBarView(
//         children: [
//           Center(child: Text("Welcome to Android"),),
//           Center(child: Text("Welcome to Apple"),),
//         ],
//       ),
//     ));
//   }
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      home: MyRichApp(),
    );
  }
}

class MyRichApp extends StatefulWidget {
  const MyRichApp({Key? key}) : super(key: key);

  @override
  State<MyRichApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyRichApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("I AM RICH"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/d.jpg'),
              ),
              ElevatedButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('I am wealthy'))
                  );
                },
                child: Text("Lucky Me"),
              ),
            ],
          ),
        ),
      );
  }
}
