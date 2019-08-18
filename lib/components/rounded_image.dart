import 'package:flutter/material.dart';


class RoundedImage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/sasuke.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}