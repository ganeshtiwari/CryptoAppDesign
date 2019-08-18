import 'package:flutter/material.dart'; 

class RoundContainer extends StatelessWidget {
  final Widget child; 
  final Color color;
  final double width; 
  final double height; 
  final LinearGradient gradient;

  RoundContainer({this.child, this.color, this.width, this.height, this.gradient});

  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        color: Color(0xFF192750),
        gradient: gradient,
      ),
      child:  child,
    );
  }
}