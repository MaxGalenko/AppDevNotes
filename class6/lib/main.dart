import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: Center(
          child: Container(
            child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
            children: <Widget>[
              Image.asset('assets/images/NISSAN-GTR_WHITE.png'),
              Image.asset('assets/images/RX-7_YELLOW.jpg'),
              Card(
                color: Colors.red,
              ),
              Card(
                color: Colors.blueAccent,
              ),
              Card(
                color: Colors.deepOrangeAccent,
              ),
              Card(
                color: Colors.white38,
              ),
              Card(
                color: Colors.black,
              ),
              Card(
                color: Colors.pinkAccent,
              ),
            ],),
          ),
        ),
      ),
    );
  }
}
