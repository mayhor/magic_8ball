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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange.shade900,
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void Randomizer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('$ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Randomizer();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
