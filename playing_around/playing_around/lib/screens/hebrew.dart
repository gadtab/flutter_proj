import 'package:flutter/material.dart';
import 'package:playing_around/screens/letters.dart';
import 'package:playing_around/shared/my_app_bar.dart';
import 'package:playing_around/shared/my_card.dart';

class Hebrew extends StatelessWidget {
  List<String> letters = [
    'א',
    'ב',
    'ג',
    'ד',
    'ה',
    'ו',
    'ז',
    'ח',
    'ט',
    'י',
    'כ',
    'ך',
    'ל',
    'מ',
    'ם',
    'נ',
    'ן',
    'ס',
    'ע',
    'פ',
    'ף',
    'צ',
    'ץ',
    'ק',
    'ר',
    'ש',
    'ת'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: 'אותיות בעברית',
      ),
      body: ListView(
        children: <Widget>[
          MyCard(
            title: 'אותיות דפוס',
            picName: 'abc_heb.png',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Letters(
                      letters: letters,
                      title: 'אותיות דפוס',
                      fontFamily: 'PFennig',
                    ),
                  ));
            },
          ),
          MyCard(
            title: 'אותיות כתב',
            picName: 'abc_heb.png',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Letters(
                      letters: letters,
                      title: 'אותיות כתב',
                      fontFamily: 'YadAlefBet',
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
