import 'package:flutter/material.dart';
import 'package:playing_around/screens/letters.dart';
import 'package:playing_around/shared/my_app_bar.dart';
import 'package:playing_around/shared/my_card.dart';

class English extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: 'אותיות באנגלית',
      ),
      body: ListView(
        children: <Widget>[
          MyCard(
            title: 'אותיות גדולות',
            picName: 'abc.jpg',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Letters(
                      letters: [
                        'A',
                        'B',
                        'C',
                        'D',
                        'E',
                        'F',
                        'G',
                        'H',
                        'I',
                        'J',
                        'K',
                        'L',
                        'M',
                        'N',
                        'O',
                        'P',
                        'Q',
                        'R',
                        'S',
                        'T',
                        'U',
                        'V',
                        'W',
                        'X',
                        'Y',
                        'Z'
                      ],
                      title: 'אותיות גדולות',
                      fontFamily: 'Quicksand',
                    ),
                  ));
            },
          ),
          MyCard(
            title: 'אותיות קטנות',
            picName: 'abc.jpg',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Letters(
                      letters: [
                        'a',
                        'b',
                        'c',
                        'd',
                        'e',
                        'f',
                        'g',
                        'h',
                        'i',
                        'j',
                        'k',
                        'l',
                        'm',
                        'n',
                        'o',
                        'p',
                        'q',
                        'r',
                        's',
                        't',
                        'u',
                        'v',
                        'w',
                        'x',
                        'y',
                        'z'
                      ],
                      title: 'אותיות קטנות',
                      fontFamily: 'Quicksand',
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
