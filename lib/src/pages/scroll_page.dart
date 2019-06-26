import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  final bigTextStyle = TextStyle(color: Colors.white, fontSize: 50.0);
  final buttonTextStyle = TextStyle(color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _page1(),
            _page2(),
          ],
        ),
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _texts(),
      ],
    );
  }

  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Welcome', style: buttonTextStyle),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(110, 190, 220, 0.5),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11°', style: bigTextStyle),
          Text('Wednesday', style: bigTextStyle),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
