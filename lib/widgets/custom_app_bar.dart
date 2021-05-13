import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Function drawerView;

  CustomAppBar(this.drawerView);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: Icon(
          Icons.menu,
        ),
        onPressed: drawerView,
      ),
      Expanded(child: Container()),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications,
        ),
      ),
    ]);
  }
}
