import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String picName;
  final Function onTap;

  MyCard({this.title, this.picName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(
          '$title',
          style: TextStyle(
            letterSpacing: 5.0,
            color: Colors.pink[600],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
          textDirection: TextDirection.rtl,
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/$picName'),
        ),
      ),
    );
  }
}
