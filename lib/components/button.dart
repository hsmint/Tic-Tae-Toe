import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tic_tae_toe/constants.dart';

class Button extends StatelessWidget {
  Button({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFDCEDC1),
      ),
      child: Text(
        text,
        style: kButtonTextStyle,
      ),
    );
  }
}
