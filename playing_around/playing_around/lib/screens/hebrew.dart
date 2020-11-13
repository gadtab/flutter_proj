import 'package:flutter/material.dart';

class Hebrew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'אותיות בעברית',
          style: TextStyle(
            letterSpacing: 5.0,
            color: Colors.pink[600],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[200],
      ),
    );
  }
}
