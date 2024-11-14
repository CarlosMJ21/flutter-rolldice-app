import 'package:roll/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 8, 91, 159),
          const Color.fromARGB(199, 57, 3, 66),
        ),
      ),
    ),
  );
}
