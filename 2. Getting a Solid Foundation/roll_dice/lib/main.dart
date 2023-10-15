import 'package:flutter/material.dart';
import 'package:roll_dice/gradient.container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurple, body: GradientContainer()),
    ),
  );
}
