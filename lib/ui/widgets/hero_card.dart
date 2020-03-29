import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final Color color;
  final double radius;
  final double paddingX;
  final double paddingY;
  final double width;
  final Widget child;

  const HeroCard({
    this.color,
    this.radius,
    this.paddingX,
    this.paddingY,
    this.width,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: paddingX,
        vertical: paddingY,
      ),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(
          radius ?? 10.0,
        ),
      ),
      child: child,
    );
  }
}
