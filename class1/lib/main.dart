import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'BullsEye',
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('BullsEyes'),
//       ),
//       body: const Center(
//         child: Text('Hello There'),
//       ),
//     ),
//   ));
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
//     return const MaterialApp(
//       home: MystatelessWidget(),
//     );
//   }
// }
//
// class MystatelessWidget extends StatelessWidget {
//   const MystatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First real App'),
//       ),
//       body: const Center(
//         child: Text(
//           'My Flutter wold',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Banner(
          message: 'New Arrival',
          location: BannerLocation.topStart,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Product launched',
              style: TextStyle(decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}