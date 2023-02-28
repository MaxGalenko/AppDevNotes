import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
//       home: MySliderApp(),
//     );
//   }
// }
//
// class MySliderApp extends StatefulWidget {
//   const MySliderApp({Key? key}) : super(key: key);
//
//   @override
//   State<MySliderApp> createState() => _MySliderAppState();
// }
//
// class _MySliderAppState extends State<MySliderApp> {
//   int _value = 5;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Slider Demo'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(
//                 Icons.volume_up,
//                 size: 40,
//               ),
//               new Expanded(
//                 child: Slider(
//                   value: _value.toDouble(),
//                   min: 1.0,
//                   max: 20.0,
//                   divisions: 10,
//                   activeColor: Colors.green,
//                   inactiveColor: Colors.red,
//                   label: 'Please set the volume',
//                   onChanged: (double newValue) {
//                     setState(() {
//                       _value = newValue.round();
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Card View'),
//         backgroundColor: Colors.greenAccent[400],
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Card(
//           elevation: 50,
//           shadowColor: Colors.black,
//           color: Colors.amber[100],
//           child: SizedBox(
//             width: 300,
//             height: 500,
//             child: Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.green[400],
//                     radius: 100,
//                     backgroundImage: NetworkImage(
//                         'https://www.hollywoodreporter.com/wp-content/uploads/2022/12/Print-Issue-38-biz_screen-Puss-In-Boots-MAIN-Publicity-H-2022.jpg'),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Flutter',
//                     style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.red,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Flutter is a hybrid paltform and useful to deploy mobile applications in windows and IOS based devices. It is reliable and speed and many people think it is competing the react native',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.red,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     width: 120,
//                     child: ElevatedButton(
//                       onPressed: () => 'Null',
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.green),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(5),
//                         child: Row(
//                           children: [
//                             Icon(Icons.touch_app),
//                             Text('Visit me'),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ));
// }

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   late WebViewController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter WebView',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('WebView'),
//         ),
//         body: Center(
//           child: WebView(
//             initialUrl: 'https://www.wikipedia.org/',
//             onWebViewCreated: (WebViewController webviewcontroller) {
//               _controller = webviewcontroller;
//             },
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
      title: 'Class Exercise',
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/05/john-wick-chapter-two-poster.jpg',
                  ),
                  radius: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Maxym Galenko',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IOS & Android Developer',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1.2,
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    title: Text('(514) 294-2667'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    title: Text('maxymgalenko@gmail.com'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.contacts,
                      color: Colors.purple,
                    ),
                    title: Text('@maxym'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
