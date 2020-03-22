import 'package:flutter/material.dart';

class HomeListCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final void Function() onPress;

  const HomeListCard(
      {Key key,
      this.title,
      this.description,
      this.icon,
      this.color,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      shadowColor: Colors.black12,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          this.onPress();
        },
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
                        style:
                            TextStyle(color: Color.fromRGBO(180, 184, 203, 1)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          width: double.infinity,
        ),
      ),
    );
  }
}
