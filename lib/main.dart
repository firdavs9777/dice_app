import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text('Dice Project'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = new Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void DiceChange(){
    setState((){
      leftDiceNumber =  Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: (){
                 DiceChange();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  DiceChange();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
              ),
            ),

          ],
        ),
      ),
    );
  }
}



