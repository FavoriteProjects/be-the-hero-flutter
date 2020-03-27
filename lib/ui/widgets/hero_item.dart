import 'package:flutter/material.dart';

class HeroItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('CASO'),
                  Text('Cadelinha atroleada'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('CASO'),
                  Text('Cadelinha atroleada'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
