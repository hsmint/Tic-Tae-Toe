import 'package:flutter/material.dart';
import 'package:tic_tae_toe/screens/game.dart';
import 'package:tic_tae_toe/screens/menu.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/game': (context) => GamePage(),
      },
    );
  }
}
