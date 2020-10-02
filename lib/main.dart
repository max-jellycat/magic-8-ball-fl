import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.purple.shade400,
        body: BallPage(),
      )));
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballIndex = 1;

  void handlePress() {
    setState(() {
      ballIndex = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$ballIndex.png'),
          onPressed: () => handlePress(),
          padding: EdgeInsets.all(16.0)),
    );
  }
}
