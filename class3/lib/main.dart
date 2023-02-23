import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'Flutter Code';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title),
//         ),
//         body: MyStatefulWidget()
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         'Hello World',
//         style: TextStyle(fontSize: 30),
//       ),
//     );
//   }
// }

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'Flutter is so good';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Column Widget Tutorial'),
//       ),
//       body: Center(
//         child: Column(
//           children: const <Widget>[
//             Text('Text1', style: TextStyle(fontSize: 35),),
//             Text('Text2', style: TextStyle(fontSize: 35),),
//             Icon(
//               Icons.beach_access,
//               color: Colors.amber,
//               size: 30,
//             ),
//             Icon(
//               Icons.audiotrack,
//               color: Colors.yellow,
//               size: 30,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
              color: Colors.green,
            ),
            child: const Text('Container 1'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 100,

            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.deepOrangeAccent,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
              color: Colors.blue,
            ),
            child: const Text('Container 1'),
          )
        ],
      ),
    );
  }
}