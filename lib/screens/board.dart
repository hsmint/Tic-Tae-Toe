import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tae_toe/components/board_button.dart';
import 'package:tic_tae_toe/constants.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int one = 0, two = 0, cnt = 0;
  String player = 'O';
  List<String> inputButton = ['', '', '', '', '', '', '', '', ''];

  Function isClicked(int num) {
    return () {
      setState(() {
        if (inputButton[num] == '') inputButton[num] = player;
        player = player == 'O' ? 'X' : 'O';
        cnt++;
      });
    };
  }

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
              player == 'O' && cnt <= 9 ? 'First Player' : 'Second Player',
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
                  defaultColumnWidth: FlexColumnWidth(100.0),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        GameButton(
                          text: inputButton[0],
                          onPress: isClicked(0),
                        ),
                        GameButton(
                          text: inputButton[1],
                          onPress: isClicked(1),
                        ),
                        GameButton(
                          text: inputButton[2],
                          onPress: isClicked(2),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        GameButton(
                          text: inputButton[3],
                          onPress: isClicked(3),
                        ),
                        GameButton(
                          text: inputButton[4],
                          onPress: isClicked(4),
                        ),
                        GameButton(
                          text: inputButton[5],
                          onPress: isClicked(5),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        GameButton(
                          text: inputButton[6],
                          onPress: isClicked(6),
                        ),
                        GameButton(
                          text: inputButton[7],
                          onPress: isClicked(7),
                        ),
                        GameButton(
                          text: inputButton[8],
                          onPress: isClicked(8),
                        ),
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
