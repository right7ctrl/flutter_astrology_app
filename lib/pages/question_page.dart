import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(244, 245, 251, 1),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 50,
                        child: Center(
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'Soru Sor',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 87, 65, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 16),
                                child: Text(
                                  'Hepimizin bazen bir rehbere veya işarete ihtiyacı olur. Bu kısmı bilmek istediğin şey konusunda bir işaret ve cevap alabilmen için düzenledik.\n\nBana herhangi bir şey sorabilirsin. Yeter ki sorun gerçek ve samimi bir evet / hayır sorusu olsun.\n\nŞimdi zihnini boşalt, bir süreliğine soruna odaklan ve hazır olduğunda aşağıdaki butona bas.',
                                  style: TextStyle(fontSize: 16, height: 1.6),
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(254, 87, 65, 1),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(16),
                                onTap: () {},
                                child: Container(
                                  height: 54,
                                  width: double.infinity,
                                  child: Center(
                                    child: Text(
                                      'Bilmek İstiyorum',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.1),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
