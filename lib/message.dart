import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Center(
        child: Text(
          message,
          style: GoogleFonts.kalam(
            textStyle: const TextStyle(
              backgroundColor: Colors.white,
              fontSize: 40,
            )
          ),
        ),
      )
    ); 
  }
}