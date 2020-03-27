import 'package:flutter/material.dart';

class HeroText extends StatelessWidget {
  final String text;
  final int maxLines;
  final double size;
  final bool bold;
  final Color color;

  HeroText({
    this.text,
    this.maxLines,
    this.size,
    this.bold = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
