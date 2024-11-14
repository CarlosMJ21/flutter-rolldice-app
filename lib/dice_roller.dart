import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  final randomizer = Random();

  void rollDice() {
    var diceRoll = randomNumber();
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  int randomNumber() {
    return randomizer.nextInt(6) + 1;
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Lanza el dado'),
        ),
      ],
    );
  }
}
