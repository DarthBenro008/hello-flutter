import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Welcome to Dice Decider',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Image.asset('images/dice1.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Image.asset('images/dice2.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
