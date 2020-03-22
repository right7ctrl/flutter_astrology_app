import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 251, 1),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Material(
              color: Color.fromRGBO(244, 245, 251, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 24, left: 12, right: 12, top: 8),
                child: Icon(
                  Icons.home,
                  size: 32,
                  color: Color.fromRGBO(69, 107, 255, 1),
                ),
              ),
            ),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Cebimdeki',
                          style: TextStyle(
                            color: Color.fromRGBO(52, 53, 62, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          'Cevaplar',
                          style: TextStyle(
                            color: Color.fromRGBO(69, 107, 255, 1),
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notification_important,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(12),
              child: Column(
                
                children: <Widget>[
                  _homeListCard(
                      title: 'Soru Sor',
                      description:
                          'Bilmek istediğin sorunun cevabı belki de sorularda yatıyor.',
                      icon: Icons.zoom_out_map,
                      color: Color.fromRGBO(254, 87, 65, 1)),
                  SizedBox(
                    height: 20,
                  ),
                  _homeListCard(
                      title: 'Kart Seç',
                      description:
                          'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor.',
                      icon: Icons.card_travel,
                      color: Color.fromRGBO(0, 234, 150, 1)),
                  SizedBox(
                    height: 20,
                  ),
                  _homeListCard(
                      title: 'Şarkılara Sor',
                      description:
                          'Bilmek istediğin sorunun cevabı belki de şarkılarda yatıyor.',
                      icon: Icons.music_note,
                      color: Color.fromRGBO(160, 91, 248, 1)),
                  SizedBox(
                    height: 20,
                  ),
                  _homeListCard(
                      title: 'Gökyüzüne Sor',
                      description:
                          'Bilmek istediğin sorunun cevabı belki de gökyüzünde yatıyor.',
                      icon: Icons.cloud,
                      color: Color.fromRGBO(42, 150, 251, 1)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _homeListCard(
      {@required String title,
      @required String description,
      @required IconData icon,
      @required Color color}) {
    return Material(
      color: Colors.white,
      elevation: 4,
      shadowColor: Colors.black12,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(81, 83, 103, 1),
                      ),
                    ),
                    Text(
                      '$description',
                      style: TextStyle(color: Color.fromRGBO(180, 184, 203, 1)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        width: double.infinity,
      ),
    );
  }
}
