import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(
      fontSize: 20.0, color: Colors.black54, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://bit.ly/2N9SoNr'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
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
        ],
      ),
    );
  }
}
