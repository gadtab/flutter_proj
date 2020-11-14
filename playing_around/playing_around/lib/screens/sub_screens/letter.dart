import 'package:flutter/material.dart';
import 'package:playing_around/shared/my_app_bar.dart';
import 'package:whiteboardkit/drawing_controller.dart';
import 'package:whiteboardkit/whiteboard.dart';

class Letter extends StatefulWidget {
  final String letter;
  final String fontFamily;

  Letter({this.letter, this.fontFamily});

  @override
  _LetterState createState() => _LetterState();
}

class _LetterState extends State<Letter> {
  DrawingController controller;

  @override
  void initState() {
    controller = DrawingController()
      ..brushColor = Colors.black
      ..brushSize = 10.0;
    controller.onChange().listen((draw) {
      //do something with it
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: MyAppBar(appBar: AppBar(), title: null),
      body: Column(
        children: [
          Text(
            '${widget.letter}',
            style: TextStyle(fontSize: 200.0, fontFamily: widget.fontFamily),
          ),
          Expanded(
            child: Whiteboard(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
