import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  final String text;
  final TextStyle style;

  PaddingText(this.text, {this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
