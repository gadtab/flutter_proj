import 'package:flutter/material.dart';
import 'package:playing_around/screens/sub_screens/number.dart';
import 'package:playing_around/shared/my_app_bar.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBar: AppBar(),
        title: 'מספרים',
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
