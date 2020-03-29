import 'package:be_the_hero/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

import 'hero_text.dart';

class HeroItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _textItem(
                  title: 'CASO:',
                  text: 'Cadelinha atropelada',
                ),
                SizedBox(width: 45.0),
                _textItem(
                  title: 'ONG:',
                  text: 'APAD',
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                _textItem(
                  title: 'VALOR:',
                  text: 'RS 120,00 reais',
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
                left: 4.0,
                right: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  HeroText(
                    text: 'Ver mais detalhes',
                    bold: true,
                    color: Theme.of(context).primaryColor,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textItem({String title, String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeroText(
          text: title ?? '',
          bold: true,
          size: 18.0,
        ),
        SizedBox(height: 8.0),
        HeroText(
          text: text ?? '',
          size: 16.0,
          color: Colors.black.withOpacity(0.5),
        ),
      ],
    );
  }
}
