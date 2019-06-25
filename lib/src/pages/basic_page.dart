import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  );

  final subtitleStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDummyText(),
            _createDummyText(),
            _createDummyText(),
            _createDummyText(),
            _createDummyText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://bit.ly/2N9SoNr'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 18.0, right: 30.0, left: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Santorini', style: titleStyle),
                  SizedBox(height: 5.0),
                  Text('Greece', style: subtitleStyle),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.lightBlue, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action(Icons.call, 'CALL'),
          _action(Icons.near_me, 'ROUTE'),
          _action(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.lightBlue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.lightBlue)),
      ],
    );
  }

  Widget _createDummyText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Exercitation nulla aliqua ea ut duis ex anim est. Dolor sunt excepteur cillum mollit consectetur magna enim dolor ex exercitation id nostrud minim. Consectetur ex veniam laboris in sit occaecat nostrud aliquip. Aute esse excepteur ea sit consectetur in dolor sit ut laboris reprehenderit sit proident.',
        textAlign: TextAlign.left,
      ),
    );
  }
}
