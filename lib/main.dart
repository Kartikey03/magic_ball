import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text("Ask Me Anything"),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(4)+1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {setState(() {
          ballNumber = Random().nextInt(4)+1;
        });},
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
