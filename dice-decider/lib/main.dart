import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('DiceDecider'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Welcome to Dice Decider',
          style: TextStyle(
            fontSize: 18,
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
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              leftDice = Random().nextInt(6) + 1;
              rightDice = Random().nextInt(6) + 1;
            });
          },
          child: Text(
            'Randomise Both Dice',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          color: Colors.white,
        ),
        Text(
          'The Sum of the dice are ${leftDice + rightDice}',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
