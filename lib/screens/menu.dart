import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tae_toe/components/button.dart';
import 'package:tic_tae_toe/constants.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset('images/tictactoe.png'),
                    Text(
                      'Tic.Tac.Toe',
                      style: kTitleStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Button(text: 'One Player'),
                  SizedBox(height: 40.0),
                  Button(text: 'Two Player'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: Text(
                'By HSMINT',
                style: kFooterTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
