import 'package:flutter/material.dart';

class StateLessPage extends StatelessWidget {
  String? var1, var2, var3;
  int? int1;

  StateLessPage({this.var1, this.var2, this.int1, var3 = 'Hello'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        height: 300,
        child: Center(
          child: Text('var1 = $var1, var2 = $var2, int1 = $int1'),
        ),
      ),
    );
  }
}
