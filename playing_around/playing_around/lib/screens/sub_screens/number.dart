import 'package:flutter/material.dart';
import 'package:playing_around/shared/my_app_bar.dart';
import 'package:whiteboardkit/drawing_controller.dart';
import 'package:whiteboardkit/whiteboard.dart';
import 'package:whiteboardkit/whiteboardkit.dart';

class Number extends StatefulWidget {
  final int number;

  Number({this.number});

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
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
            '${widget.number}',
            style: TextStyle(fontSize: 200.0),
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
