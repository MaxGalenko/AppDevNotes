import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final appTitle = 'Flutter Drawer Demo';
//
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final String title;
//
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text(
//           'A drawer is an invisible side screen',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text('Montreal'),
//               accountEmail: Text('Montreal@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.orange,
//                 child: Text(
//                   'M',
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.home,
//               ),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.settings,
//               ),
//               title: Text('Settings'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.contacts,
//               ),
//               title: Text('Contact us'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter Data Passing',
//     home: FirstScreen(),
//   ));
// }
//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   // This widget controls the data within the text field
//   TextEditingController textEditingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(30),
//             child: TextField(
//               controller: textEditingController,
//               style: TextStyle(
//                 fontSize: 26,
//                 color: Colors.orange,
//               ),
//             ),
//           ),
//           ElevatedButton(
//             child: Text(
//               'Go to Second Screen',
//               style: TextStyle(fontSize: 26),
//             ),
//             onPressed: () {
//               _sendDataToSecondScreen(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _sendDataToSecondScreen(BuildContext context) {
//     String textToSend = textEditingController.text;
//     Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(text: textToSend, key: null)));
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   final String text;
//   const SecondScreen({Key? key, required this.text}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 28),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter',
//     home: FirstScreen(),
//   ));
// }
//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   String text = 'text';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FirstScreen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(30),
//               child: Text(
//                 text,
//                 style: TextStyle(fontSize: 26),
//               ),
//             ),
//             ElevatedButton(
//               child: Text(
//                 'Go to Second Screen',
//                 style: TextStyle(fontSize: 26),
//               ),
//               onPressed: () {
//                 _awaitReturnValueFromSecondScreen(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _awaitReturnValueFromSecondScreen(BuildContext context) async {
//     final result = await Navigator.push(
//         context, MaterialPageRoute(builder: (context) => SecondScreen()));
//     setState(() {
//       text = result;
//     });
//   }
// }
//
// class SecondScreen extends StatefulWidget {
//   const SecondScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }
//
// class _SecondScreenState extends State<SecondScreen> {
//   TextEditingController textEditingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(32),
//             child: TextField(
//               controller: textEditingController,
//               style: TextStyle(fontSize: 28, color: Colors.black),
//             ),
//           ),
//           ElevatedButton(
//             child: Text(
//               'Send Data Back To First Screen',
//               style: TextStyle(fontSize: 24),
//             ),
//             onPressed: () {
//               _sendDataBack(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _sendDataBack(BuildContext context) {
//     String textToSend = textEditingController.text;
//     Navigator.pop(context, textToSend);
//   }
// }

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => RouteOne(),
      '/detail': (context) => RouteTwo(item: ''),
    },
  ));
}

class RouteOne extends StatelessWidget {
  final list = List.generate(20, (index) => 'Item ${index + 1}');

  RouteOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(list[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RouteTwo(item: list[index])));
              },
            );
          },
        ),
      ),
    );
  }
}

class RouteTwo extends StatelessWidget {
  final String item;

  const RouteTwo({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'You clicked on $item',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Spacer(),
            ElevatedButton(
              child: Text('Go back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
