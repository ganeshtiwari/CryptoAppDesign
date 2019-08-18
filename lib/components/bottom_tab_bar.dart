import 'package:flutter/material.dart'; 
import 'custom_icon_button.dart';


class BottomTabBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 61.0, 
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomIconButton(
            icon: Icons.add_alarm,
            iconSize: 25.0,
            onTap:() {
            }
          ),
          CustomIconButton(
            icon: Icons.add_a_photo,
            iconSize: 25.0,
            onTap:() {
            }
          ),
          CustomIconButton(
            icon: Icons.add_alert,
            iconSize: 25.0,
            onTap:() {
            }
          ),
          CustomIconButton(
            icon: Icons.add_call,
            iconSize: 25.0,
            onTap:() {
            }
          ),
        ],
      ),
    );
  }
}