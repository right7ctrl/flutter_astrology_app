import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final List<CustomBottomBarItem> items;
  final void Function(int val) onTap;
  final int currentIndex;

  const CustomBottomBar(
      {Key key, @required this.items, this.onTap, @required this.currentIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: this.items.map((f) {
          return Material(
            color: this.items.indexOf(f) == currentIndex
                ? Color.fromRGBO(69, 107, 255, .1)
                : Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: InkWell(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              onTap: () {
                this.onTap(this.items.indexOf(f));
              },
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 24, left: 18, right: 18, top: 8),
                child: Icon(
                  f.icon,
                  size: 32,
                  color: this.currentIndex == this.items.indexOf(f)
                      ? Color.fromRGBO(69, 107, 255, 1)
                      : Color.fromRGBO(195, 198, 206, 1),
                ),
              ),
            ),
          );
        }).toList());
  }
}

class CustomBottomBarItem {
  final IconData icon;

  CustomBottomBarItem({this.icon});
}
