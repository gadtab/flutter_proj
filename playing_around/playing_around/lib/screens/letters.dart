import 'package:flutter/material.dart';
import 'package:playing_around/screens/sub_screens/letter.dart';
import 'package:playing_around/shared/my_app_bar.dart';

class Letters extends StatelessWidget {
  final List<String> letters;
  final String title;
  final String fontFamily;

  Letters({this.letters, this.title, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: title,
      ),
      body: GridView.count(
        crossAxisCount: 5,
        children: List.generate(
            letters.length,
            (index) => Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Letter(
                                  letter: letters[index],
                                  fontFamily: fontFamily,
                                )),
                      );
                    },
                    child: Text(
                      '${letters[index]}',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: fontFamily,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
