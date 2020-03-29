import 'package:flutter/material.dart';

import '../widgets/hero_button.dart';
import '../widgets/hero_card.dart';
import '../widgets/hero_text.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 233, 244, 1.0),
      body: Padding(
        padding: const EdgeInsets.only(top: 46, left: 15.0, right: 15.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            HeroCard(
              paddingX: 15.0,
              paddingY: 15.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            HeroText(
                              text: 'CASO:',
                              size: 18.0,
                              bold: true,
                            ),
                            HeroText(
                              text: 'Lorem',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Column(
                          children: <Widget>[
                            HeroText(
                              text: 'ONG:',
                              size: 18.0,
                              bold: true,
                            ),
                            HeroText(
                              text: 'Lorem',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeroText(
                        text: 'Lorem',
                        size: 18.0,
                        bold: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 15.0,
                        ),
                        child: HeroText(
                          text:
                              'Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Viva Forevis aptent taciti sociosqu ad litora torquent',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeroText(
                        text: 'Lorem',
                        size: 18.0,
                        bold: true,
                      ),
                      HeroText(
                        text: 'Lorem',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            HeroCard(
              paddingX: 25.0,
              paddingY: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HeroText(
                    text: 'Salve o dia',
                    size: 20.0,
                    bold: true,
                  ),
                  HeroText(
                    text: 'Seja o herói desse caso',
                    size: 20.0,
                    bold: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                      bottom: 15.0,
                    ),
                    child: HeroText(
                      text: 'Loremmm',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HeroButton(
                        text: 'WhatsApp',
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      HeroButton(
                        text: 'Email',
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
