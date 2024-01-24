import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();

    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20,),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)
            ),
            child: const Text('Roll')
        )
      ],
    );
  }
}