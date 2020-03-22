import 'package:fl_astrology/pages/card_pick/card_pick_second.dart';
import 'package:fl_astrology/scaffolds/custom_page_scaffold.dart';
import 'package:flutter/material.dart';

class CardPickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Kart Seç',
        buttonTitle: 'Kartlara Sor',
        body: Text(
          'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor. Sorunu, kadim öğretilerden, sembollerden, mitler ve arketiplerden yola çıkarak hazırlanmış kartlara da sorabilirsin. Diyelim ki net bir sorun yok, o zaman da bugünün veya içinden geçtiğin dönemin sana mesajının ne olduğunu kartlara sorabilirsin. \n\nKarttaki mesajı alabilmen için biraz soyut ve sembolik düşünmen gerekiyor. Genelde çok analitik düşünen biriysen, buradaki mesajı bilinçli aklın yerine kalbinle duymaya çalışmanı öneriririz.',
          style: TextStyle(fontSize: 16, height: 1.6),
          textAlign: TextAlign.left,
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardPickSecond(),
            ),
          );
        },
        pageColor: Color.fromRGBO(0, 234, 150, 1),
      ),
    );
  }
}
