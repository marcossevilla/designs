import 'dart:math';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
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
}
