import 'package:be_the_hero/ui/widgets/hero_item.dart';
import 'package:flutter/material.dart';

class HeroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: HeroItem(),
      ),
    );
  }
}
