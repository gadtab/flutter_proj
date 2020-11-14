import 'package:flutter/material.dart';
import 'package:playing_around/shared/my_card.dart';

class Home extends StatelessWidget {
  final title = 'ללמוד אותיות ומספרים';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            letterSpacing: 5.0,
            color: Colors.pink[600],
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple[100],
      ),
      body: ListView(
        children: <Widget>[
          MyCard(
            title: 'מספרים',
            picName: '123.jpg',
            onTap: () {
              Navigator.pushNamed(context, '/numbers');
            },
          ),
          MyCard(
            title: 'אותיות בעברית',
            picName: 'abc_heb.png',
            onTap: () {
              Navigator.pushNamed(context, '/hebrew');
            },
          ),
          MyCard(
            title: 'אותיות באנגלית',
            picName: 'abc.jpg',
            onTap: () {
              Navigator.pushNamed(context, '/english');
            },
          ),
        ],
      ),
    );
  }
}
