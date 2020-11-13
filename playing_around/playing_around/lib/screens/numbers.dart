import 'package:flutter/material.dart';
import 'package:playing_around/screens/sub_screens/number.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'מספרים',
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
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            10,
            (index) => Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Number(
                                  number: index,
                                )),
                      );
                    },
                    child: Text(
                      '$index',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                )),
      ),
    );
  }
}
