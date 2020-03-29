import 'package:flutter/material.dart';

import 'hero_card.dart';

class HeroButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const HeroButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return HeroCard(
      paddingX: 30,
      paddingY: 14,
      width: 140.0,
      color: Theme.of(context).primaryColor,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
