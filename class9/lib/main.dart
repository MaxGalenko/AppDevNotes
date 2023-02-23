import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'Flutter Network Image';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(_title),
//         ),
//         body: MyStatefulWidget(),
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
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(20),
//             child: Image(
//               image: NetworkImage('https://wallpapercave.com/wp/UK4TcKI.jpg'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
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
//   Color _containerColor = Colors.yellow;
//
//   void changeColor() {
//     setState(() {
//       if(_containerColor == Colors.yellow) {
//         _containerColor = Colors.red;
//         return;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateful Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('A simple code for Stateful Widget'),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             color: _containerColor
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: changeColor,
//           child: Icon(
//             Icons.add
//           ),
//           tooltip: 'Please long press here',
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: RunMyApp(),
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(primarySwatch: Colors.green),
//   ));
// }
//
// class RunMyApp extends StatelessWidget {
//   const RunMyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => NextPage()));
//           },
//           child: Text('Go to the next page'),
//         ),
//       ),
//     );
//   }
// }
//
// class NextPage extends StatelessWidget {
//   const NextPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Next Page'),
//       ),
//       body: Center(
//         child: Text('Welcome to the second page'),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: MyApp(),));
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
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Field Demo'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: <Widget>[
//             Padding(padding: EdgeInsets.all(20),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Username',
//                 hintText: 'Enter your name',
//               ),
//             ),),
//             Padding(padding: EdgeInsets.all(20),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                   hintText: 'Enter your password',
//                 ),
//               ),),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Sign in'),)
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
//   TextEditingController nameController = TextEditingController();
//   String fullname = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Retrieve Data From Text Field'),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.all(20),
//                 child: TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Full Name',
//                     hintText: 'Write your full name',
//                   ),
//                   onChanged: (text) {
//                     setState(() {
//                       fullname = text;
//                     });
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(20),
//                 child: Text(fullname),
//               )
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
//       title: 'Retrieve in Alert',
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       debugShowCheckedModeBanner: false,
//       home: MyForm(),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   const MyForm({Key? key}) : super(key: key);
//
//   @override
//   State<MyForm> createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final myController = TextEditingController();
//
//   void dispose() {
//     myController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Retrive From FAB'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: TextField(
//           controller: myController,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(context: context, builder: (context) {
//             return AlertDialog(
//               content: Text(myController.text),
//             );
//           });
//         },
//         tooltip: 'Show me what I typed',
//         child: Icon(
//           Icons.add_comment_rounded
//         ),
//       ),
//     );
//   }
// }

// Navigation using second method which is called route context method
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     routes: {
//       '/': (context) => RouteOne(),
//       '/detail': (context) => RouteTwo(),
//     },
//   ));
// }
//
// class RouteOne extends StatelessWidget {
//   const RouteOne({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen One'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate to the next route
//             Navigator.pushNamed(context, '/detail');
//           },
//           child: Text('Open the next page'),
//         ),
//       ),
//     );
//   }
// }
//
// class RouteTwo extends StatelessWidget {
//   const RouteTwo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen Two'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/');
//           },
//           child: Text('Go back to the main page'),
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
      title: 'Demo class',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Text('User Input'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text('Sign in'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Write your username',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Write your password',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text('Forgot password?'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Welcome User'),
                        );
                      });
                },
                child: Text('Login')),
            Container(
              margin: EdgeInsets.all(15),
              child: Text('Do not have an account? Register'),
            )
          ],
        ),
      ),
    );
  }
}
