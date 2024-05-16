import 'package:flutter/material.dart';
import 'package:simpson/bart.dart';
import 'package:simpson/message.dart';

class Homer extends StatefulWidget {
  const Homer({super.key});

  @override
  State<Homer> createState() => _HomerState();
}

class _HomerState extends State<Homer> {
  
  String _homerMessage = '';
  String _bartMessage = '';
  final myController = TextEditingController();

  void enfantMessage(String message) {
    setState(() {
      _bartMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(
                      image: AssetImage('images/Homer.png'),
                      width: 200,
                    ),
                  ),
                  TextField(
                        controller: myController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.yellow,
                          border: OutlineInputBorder(),
                          hintText: 'Enter a message to Bart here...'
                        ),
                  ),
                  ElevatedButton(
                        onPressed: sendHomerMessage,
                        child: const Icon(Icons.send), 
                  ),
                  Message(message: _bartMessage),
                ],
              ),
            ),
            Expanded(
              child: Bart(homerMessage: _homerMessage, bartMessage: enfantMessage),
            ),
          ],
        ),
      ),
    ); 
  }


  void sendHomerMessage() {
    setState(() {
      _homerMessage = myController.text;
    });
  }
}