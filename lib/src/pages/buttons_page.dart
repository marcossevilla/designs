import 'package:flutter/material.dart';

import 'dart:math';

class ButtonsPage extends StatelessWidget {
  final titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  final subtitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _background() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple[900], Colors.indigo[900]],
          begin: FractionalOffset(0.0, 0.4),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );

    final box = Transform.rotate(
      angle: -pi / 4.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent[400],
              Colors.purpleAccent[700],
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: box,
          top: -80.0,
          left: -40.0,
        ),
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify Transactions', style: titleStyle),
            SizedBox(height: 10.0),
            Text(
              'Classified transactions into a particular category',
              style: subtitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
