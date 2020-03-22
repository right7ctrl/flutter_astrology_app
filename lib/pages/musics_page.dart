import 'package:fl_astrology/scaffolds/custom_page_scaffold.dart';
import 'package:flutter/material.dart';

class MusicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Şarkılara Sor',
        buttonTitle: 'Şarkılara Sor',
        body: Text(
          'Bugün senin için ne düşünüyor?\n\nPlanlarınız neler?\n\nİlişkiniz nereye gidiyor?',
          style: TextStyle(fontSize: 16, height: 1.6),
          textAlign: TextAlign.left,
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {
          
        },
        pageColor: Color.fromRGBO(160,91,248, 1),
      ),
    );
  }
}
