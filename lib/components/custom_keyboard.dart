import 'package:flutter/material.dart'; 
import 'custom_icon_button.dart';

const List<int> numberPad = [
  49, 50, 51, 52, 53, 54, 55, 56, 57, 0xe90d, 48, 215
];

class CustomKeyBoard extends StatelessWidget {
  final Function onTap;
  final List<Widget> columnChildren = [];

  CustomKeyBoard({this.onTap});

  @override 
  Widget build(BuildContext context) {
    _buildKeyPad();
    return Container(
      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0), 
      margin: EdgeInsets.only(top: 10.0), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: columnChildren,
      ),
    );
  }

  void _buildKeyPad() {
    List<Widget> rowChildren = [];

    for (int i in numberPad) {
      rowChildren.add(
        CustomIconButton(
          icon: IconData(
            i, 
            fontFamily: i == 0xe90d ? 'MaterialIcons' : 'Source Sans Pro',
          ),
          iconSize: 30.0,
          onTap: () => onTap(i),
        )
      );
      if(rowChildren.length == 3) {
        columnChildren.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rowChildren,
          )
        );
        rowChildren = [];
      }
    }
  }
}