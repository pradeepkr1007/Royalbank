import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  final Icon icon;
  final double margintop;
  final TextStyle textStyle = const TextStyle(
      color: const Color(0XFFFFFFFF),
      fontSize: 16.0,
      fontWeight: FontWeight.bold);

  final TextStyle buttonTextStyle;

  //passing props in react style
  TextButton({
    this.buttonName,
    this.onPressed,
    this.buttonTextStyle,
    this.icon,
    this.margintop,
  });

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: const EdgeInsets.only(top: 130.0),
      child: new FlatButton.icon(
        label: new Text(buttonName,
            textAlign: TextAlign.center, style: buttonTextStyle),
        icon: icon ,
        onPressed: onPressed,
      ))
    );
  }
}
