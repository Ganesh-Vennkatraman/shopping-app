import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, this.text, this.onPress});

  final Color color;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Rubik',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}