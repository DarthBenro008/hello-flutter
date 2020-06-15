import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Text("Hello Flutter"),
            ),
            width: 100.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
