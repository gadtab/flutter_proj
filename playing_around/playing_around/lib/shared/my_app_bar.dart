import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  MyAppBar({this.title, this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.purple[300],
          ),
        )
      ],
      title: title != null
          ? Text(
              '$title',
              style: TextStyle(
                letterSpacing: 5.0,
                color: Colors.pink[600],
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            )
          : Text(''),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.purple[100],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
