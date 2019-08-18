import 'package:flutter/material.dart';


class TryTile extends StatelessWidget {
  final Widget leadingWidget;
  final Widget trailingWidget;

  TryTile({
    this.leadingWidget, 
    this.trailingWidget,
  });

  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0), 
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF26345E), 
            width: 1.0,
          ), 
        ), 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[ 
          trailingWidget,
          leadingWidget,
        ],
      ),
    );
  }

}