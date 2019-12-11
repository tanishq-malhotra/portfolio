import 'package:flutter/material.dart';

import './screens/HomePage.dart';
import './widgets/theme_switcher.dart';
import './config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkMode: false,
      child: TanishqMalhotra(),
    );
  }
}

class TanishqMalhotra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tanishq Malhotra',
      theme: ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}