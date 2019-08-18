import 'package:flutter/material.dart';


class TestScreen extends StatefulWidget {
  @override 
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool nightModeOn = true;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
    body:SafeArea(
        child: Column(
        children: <Widget> [
          Card(
            color: Color(0xFF192750),
            shape: Border(bottom: BorderSide(width: 1.0, color: Color(0xFF26345E))),
            borderOnForeground: true,
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 60.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('Night Mode'), 
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: <Widget> [
                        Text('ganesh'),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            borderOnForeground: true,
            color: Color(0xFF192750),
            shape: Border(bottom: BorderSide(width: 1.0, color: Color(0xFF26345E))),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 60.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('Night Mode'), 
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: <Widget> [
                        Text('ganesh'),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            borderOnForeground: true,
            color: Color(0xFF192750),
            shape: Border(bottom: BorderSide(width: 1.0, color: Color(0xFF26345E))),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 60.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('Night Mode'), 
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: <Widget> [
                        Text('ganesh'),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    ),
  );
  }
}
