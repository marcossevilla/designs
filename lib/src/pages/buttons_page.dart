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

  final normalTextStyle = TextStyle(
    color: Colors.white,
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
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar(context),
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

  Widget _bottomNavBar(BuildContext context) {
    return Theme(
      child: BottomNavigationBar(
        fixedColor: Colors.purpleAccent[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app, size: 30.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user, size: 30.0),
            title: Container(),
          ),
        ],
      ),
      data: Theme.of(context).copyWith(
        canvasColor: Colors.indigo[900],
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Colors.grey,
              ),
            ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
      ],
    );
  }

  Widget _createRoundedButton() {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.purpleAccent[700].withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            child: Icon(
              Icons.videogame_asset,
              color: Colors.white,
              size: 30.0,
            ),
            radius: 35.0,
            backgroundColor: Colors.purpleAccent,
          ),
          Text('Anything', style: normalTextStyle),
        ],
      ),
    );
  }
}
