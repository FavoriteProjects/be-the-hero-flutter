import 'package:flutter/material.dart';

import '../widgets/hero_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 233, 244, 1.0),
      body: Padding(
        padding: EdgeInsets.only(top: 46, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/images/logo.png'),
                RichText(
                  text: TextSpan(
                    text: 'Total de ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '43 casos.',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HeroText(
                    text: 'Bem-vindo!',
                    size: 28.0,
                    bold: true,
                  ),
                  SizedBox(height: 15.0),
                  HeroText(
                    text: 'Escolha um dos casos abaixo e salve o dia.',
                    maxLines: 2,
                    size: 20.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
