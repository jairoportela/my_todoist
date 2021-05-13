import 'package:flutter/material.dart';

import './home_screen.dart';

class SideMenuScreen extends StatefulWidget {
  @override
  _SideMenuScreenState createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeScreen(),
      ],
    );
  }
}
