import 'package:fl_astrology/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SecondaRound'
      ),
      home: HomePage(),
    );
  }
}
