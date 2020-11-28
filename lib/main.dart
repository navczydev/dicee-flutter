import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dice Chapter'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePageState(),
      ),
    ),
  );
}

/*
class DicePage extends StatelessWidget {
  //var leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    // leftDiceNumber = Random(6).nextInt(6);
                    print('left click');
                  },
                  child: Image.asset("images/dice1.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print('Right clicked');
                  },
                  child: Image.asset("images/dice2.png")))
        ],
      ),
    );
  }
}
*/

class DicePageState extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePageState> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    generateNumber();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    generateNumber();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png")))
        ],
      ),
    );
  }

  void generateNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('right click $rightDiceNumber');
    });
  }
}
