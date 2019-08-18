import 'package:flutter/material.dart';


class CustomTile extends StatelessWidget {
  final String title; 
  final Widget trailing; 
  final Function onTap;

  CustomTile({
    @required this.title, 
    this.trailing,
    this.onTap,
  });

  @override 
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF192750),
      shape: Border(
        bottom: BorderSide(
          width: 1.0, 
          color: Color(0xFF26345E)
        ),
        left: BorderSide(
          color: Color(0xFF192750),
          width: 1.0,
        ), 
        right: BorderSide(
          color: Color(0xFF192750),
          width: 1.0, 
        ), 
        top: BorderSide(
          color: Color(0xFF192750),
          width: 1.0,
        ),
      ),
      borderOnForeground: true,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 61.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Text(title), 
            InkWell(
              onTap: onTap,
              child: trailing,
            ),
          ],
        ),
      ),
    );
  }
}