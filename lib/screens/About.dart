import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../config/assets.dart';
import '../config/sources.dart';

class About extends StatelessWidget {
  Widget getButton(String label, Image icon, String source) {
    return FlatButton.icon(
      icon: SizedBox(
        height: 20,
        width: 20,
        child: icon,
      ),
      label: Text(label),
      onPressed: () => html.window.open(source, 'tanishqmalhotra'),
    );
  }

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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getButton('GitHub', Image.asset(Assets.git), Sources.git_profile),
                getButton('Instagram', Image.asset(Assets.insta), Sources.insta_profile),
                getButton('Linkedin', Image.asset(Assets.linkedin), ''),
                getButton('Facebook', Image.asset(Assets.fb), Sources.facebook_profile),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
