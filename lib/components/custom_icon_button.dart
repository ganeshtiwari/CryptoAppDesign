import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomIconButton extends StatelessWidget {
  final IconData icon; 
  final double iconSize;
  final Function onTap;
  final FocusNode focusNode;
  final EdgeInsetsGeometry padding = EdgeInsets.all(8.0);

  CustomIconButton({
    @required this.icon, 
    @required this.iconSize, 
    this.onTap,
    this.focusNode,
  }); 

  @override 
  Widget build(BuildContext context) {
    ConstrainedBox result =  ConstrainedBox(
      constraints: BoxConstraints(minWidth: 48, minHeight: 48),
      child: Padding(
        padding: padding,
        child: SizedBox(
          height: iconSize, 
          width: iconSize,
          child: Align(
            alignment: Alignment.center,
            child: IconTheme.merge(
              data: IconThemeData(
                size: iconSize, 
                color: onTap == null ? Theme.of(context).disabledColor : Colors.white,
              ),
              child: Icon(icon),
            ),
          ),
        ),
      ),
    );

    return Semantics(
      button: true, 
      enabled: onTap != null, 
      child: Focus(
        focusNode: focusNode,
        child: InkResponse(
          onTap: onTap,
          child: result, 
          splashColor: Theme.of(context).splashColor,
          focusColor: Theme.of(context).focusColor,
          hoverColor: Theme.of(context).hoverColor,
          highlightColor: Theme.of(context).highlightColor,
          radius: (iconSize + math.min(padding.horizontal, padding.vertical)) * 0.7,
        ),
      ),
    );
  }
}