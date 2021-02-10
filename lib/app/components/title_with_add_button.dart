import 'package:flutter/material.dart';
import 'package:incasa/app/components/const.dart';
//import 'package:incasa/app/telas/add_comodos_pg.dart';
import 'package:incasa/app/components/dispositivos/tipo_dispositivo.dart';


class TitleWithAdd extends StatelessWidget {

  const TitleWithAdd({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TitleUnderlined(text: text),
        Spacer(),
        AddDisp(),
      ],
    );
  }
}

class TitleUnderlined extends StatelessWidget {
  const TitleUnderlined({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefPadding),
      child: Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 6,
                color: kPrimaryColor.withOpacity(0.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}


