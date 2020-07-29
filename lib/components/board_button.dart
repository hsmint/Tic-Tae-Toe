import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  GameButton({this.onPress, this.text});

  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 100.0,
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(fontSize: 80.0, color: Colors.white),
      ),
    );
  }
}
