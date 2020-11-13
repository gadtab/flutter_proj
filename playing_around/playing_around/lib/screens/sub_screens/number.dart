import 'package:flutter/material.dart';
import 'package:playing_around/shared/touch_points.dart';
import 'package:playing_around/widgets/my_painter.dart';

class Number extends StatefulWidget {
  final int number;

  Number({this.number});

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    // GlobalKey globalKey = GlobalKey();
    List<TouchPoints> _points = List<TouchPoints>();

    double opacity = 1.0;
    StrokeCap strokeType = StrokeCap.round;
    double strokeWidth = 10.0;
    Color selectedColor = Colors.black;

    return Scaffold(
      // key: globalKey,
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        children: [
          Text(
            '${widget.number}',
            style: TextStyle(fontSize: 250.0),
          ),
          Expanded(
            child: Container(
              child: GestureDetector(
                onPanStart: (details) {
                  setState(() {
                    RenderBox renderBox = context.findRenderObject();
                    _points.add(TouchPoints(
                        points: renderBox.globalToLocal(details.localPosition),
                        paint: Paint()
                          ..strokeCap = strokeType
                          ..isAntiAlias = true
                          ..color = selectedColor.withOpacity(opacity)
                          ..strokeWidth = strokeWidth));
                    print('onPanStart - details = ${details.localPosition}');
                  });
                  print('onPanStart - points.length - ${_points.length}');
                },
                onPanUpdate: (details) {
                  setState(() {
                    RenderBox renderBox = context.findRenderObject();
                    _points.add(TouchPoints(
                        points: renderBox.globalToLocal(details.localPosition),
                        paint: Paint()
                          ..strokeCap = strokeType
                          ..isAntiAlias = true
                          ..color = selectedColor.withOpacity(opacity)
                          ..strokeWidth = strokeWidth));
                    print('onPanUpdate - details = ${details.localPosition}');
                  });
                  print('onPanUpdate - points.length - ${_points.length}');
                },
                onPanEnd: (details) {
                  setState(() {
                    _points.add(null);
                  });
                },
                child: CustomPaint(
                  size: Size.infinite,
                  painter: MyPainter(
                    pointsList: _points,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
