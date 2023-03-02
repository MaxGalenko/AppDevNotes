import 'package:flutter/material.dart';
import './statefulpage.dart';
import './statelesspage.dart';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: <String, WidgetBuilder>{
//       '/second': (context) => SecondPage(),
//     },
//     home: HomePage(),
//   ));
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             User user = new User(name: 'Max', age: 19);
//             Navigator.pushNamed(context, '/second', arguments: user);
//           },
//           child: Text('Go to Second Page'),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   User? user;
//
//   @override
//   Widget build(BuildContext context) {
//     RouteSettings? settings = ModalRoute.of(context)?.settings;
//     user = settings?.arguments as User;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${this.user?.name} - ${this.user?.age}'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             User user = new User(name: 'Cegep Vanier', age: 25);
//             Route route =
//                 MaterialPageRoute(builder: (context) => SecondPage(user: user));
//             Navigator.push(context, route);
//           },
//           child: Text('Go to Second Page'),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   final User user;
//
//   SecondPage({required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${this.user.name} - ${this.user.age}'),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//     onGenerateRoute: (RouteSettings settings) {
//       switch (settings.name) {
//         case '/':
//           return MaterialPageRoute(builder: (context) => HomePage());
//           break;
//         case '/second':
//           User user = settings.arguments as User;
//           return MaterialPageRoute(builder: (context) => SecondPage(user: user));
//           break;
//       }
//     },
//   ));
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             User user = new User(name: 'Canada', age: 200);
//             Navigator.pushNamed(context, '/second', arguments: user);
//           },
//           child: Text('Press me'),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   final User user;
//   SecondPage({required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${this.user.name} - ${this.user.age}'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back'),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  String countryName = 'Canada';

  // Variable to pass in another page, you can have any other data as well

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Transfer to Another Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StateLessPage(
                      var1: 'Canada',
                      var2: countryName,
                      int1: 21,
                    );
                  }));
                },
                child: Text('Go to statelesspage'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StatefulPage(
                      var1: 'USA',
                      var2: countryName,
                      int1: 21,
                    );
                  }));
                },
                child: Text('Go to statefulpage'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
