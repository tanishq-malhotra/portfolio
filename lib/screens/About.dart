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
              backgroundImage: Image.asset(Assets.moon).image,
            ),
            Text('Tanishq Malhotra'),
            SizedBox(
              height: 5,
            ),
            Text('Flutter, Machine Learning, Deep Learning, Nodejs')
          ],
        ),
      ),
    );
  }
}
