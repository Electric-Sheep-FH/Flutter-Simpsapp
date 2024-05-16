import 'package:flutter/material.dart';
import 'package:simpson/homer.dart';

class SimpsApp extends StatelessWidget {
  const SimpsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homer(),
    );
  }
}