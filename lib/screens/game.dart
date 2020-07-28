import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tae_toe/components/board.dart';
import 'package:tic_tae_toe/constants.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int one = 0, two = 0, turn = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                '$one : $two',
                style: kScoreTextStyle,
              ),
            ),
            Text(
              'First Player',
              style: kTurnTextStyle,
              textAlign: TextAlign.left,
            ),
            Container(
              decoration: BoxDecoration(
                color: kBoxColor,
                borderRadius: BorderRadius.circular(35.0),
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Table(
                  border: TableBorder.symmetric(
                    outside: BorderSide.none,
                    inside: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 5.0,
                    ),
                  ),
                  children: [
                    TableRow(
                      children: [
                        GameButton(),
                        GameButton(),
                        GameButton(),
                      ],
                    ),
                    TableRow(
                      children: [
                        GameButton(),
                        GameButton(),
                        GameButton(),
                      ],
                    ),
                    TableRow(
                      children: [
                        GameButton(),
                        GameButton(),
                        GameButton(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
