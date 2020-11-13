import 'package:flutter/material.dart';
import 'package:playing_around/screens/english.dart';
import 'package:playing_around/screens/hebrew.dart';
import 'package:playing_around/screens/home/home.dart';
import 'package:playing_around/screens/numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final title = 'ללמוד אותיות ומספרים';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/numbers': (context) => Numbers(),
        '/hebrew': (context) => Hebrew(),
        '/english': (context) => English(),
      },
    );
  }
}
