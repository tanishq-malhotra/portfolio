import 'package:flutter/material.dart';

import '../config/assets.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: Image.asset(Assets.avatar).image,
              radius: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Tanishq Malhotra',
              textScaleFactor: 4,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Android, Flutter, Machine Learning,\n Deep Learning, Nodejs',
              textAlign: TextAlign.center,
              textScaleFactor: 2,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
