import 'package:flutter/material.dart';
import 'package:simpson/message.dart';

class Bart extends StatelessWidget {
  const Bart({super.key, required this.homerMessage, required this.bartMessage});

  final String homerMessage;
  final Function bartMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: const Image(
            image: AssetImage('images/Bart.png'),
            width: 200,
          ),
        ),
        Message(message: homerMessage),
        ElevatedButton(
          onPressed: bartButton,
          child: const Icon(Icons.reply)
        ),
      ],
    );
  }

  void bartButton() {
    bartMessage('Aïe Caramba !');
  }
}