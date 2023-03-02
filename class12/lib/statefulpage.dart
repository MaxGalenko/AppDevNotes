import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  String var1 = ' ';
  String var2 = ' ';
  String var3 = ' ';
  int int1 = 0;

  StatefulPage({required this.var1, required this.var2, required this.int1, var3 = 'Welcome'});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    String var1 = widget.var1;
    // Use Widget class to get values from the main class

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        height: 300,
        child: Center(
          child: Text('var1 = $var1, var2 = ' + widget.var2),
        ),
      ),
    );
  }
}
