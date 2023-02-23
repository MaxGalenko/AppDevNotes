import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Raised Buttons'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Raised Buttons with Different Properties',
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Disabled Enabled'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Default Enabled'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Text Color changed', style: TextStyle(color: Colors.red),),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Color changed', style: TextStyle(color: Colors.green),),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button with Padding'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('More Rounded Corners', style: TextStyle(color: Colors.purpleAccent),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevation Increased'),
                style: ElevatedButton.styleFrom(elevation: 5),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Splash color'),
                style: ElevatedButton.styleFrom(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevation is Zero',),
                style: ElevatedButton.styleFrom(elevation: 0),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Gradient Color', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
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
// class _MyAppState extends State<MyApp> {
//   bool isSwitched = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Toggle Demo'),
//       ),
//       body: Center(
//         child: Switch(
//           value: isSwitched,
//           onChanged: (value) {
//             setState(() {
//             isSwitched = value;
//             print(isSwitched);
//             });
//           },
//           activeTrackColor: Colors.lightGreenAccent,
//           activeColor: Colors.green,
//         ),
//       ),
//     );
//   }
// }
