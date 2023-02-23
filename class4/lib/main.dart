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
//     return const StatelessScreen();
//   }
// }
//
// class StatelessScreen extends StatelessWidget {
//   const StatelessScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('LogRockets'),
//           backgroundColor: Colors.blueGrey[600],
//         ),
//         backgroundColor: Colors.white,
//         body: Container(),
//       ),
//     );
//   }
// }

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
//       title: 'Flutter ElevatedButton Shadow Color Example',
//       home: FlutterExample(),
//     );
//   }
// }
//
// class FlutterExample extends StatefulWidget {
//   const FlutterExample({Key? key}) : super(key: key);
//
//   @override
//   State<FlutterExample> createState() => _FlutterExampleState();
// }
//
// class _FlutterExampleState extends State<FlutterExample> {
//   var buttonText = 'Click Me!';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter Change Button Text On Press')),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 buttonText = 'Loading...';
//               });
//             },
//             style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
//             child: Text(buttonText),
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Insert Image Demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('asset/image/zenitsu.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
