import 'package:flutter/material.dart';
import '../widgets/theme_switcher.dart';

import './About.dart';
import './Projects.dart';
import '../config/assets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;
  final List<Widget> _tabsScreen = [
    About(),
    Projects(),
  ];

  void changeTab(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Image.asset(Assets.moon),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          ),
        ],
      ),
      body: Center(
        child: _tabsScreen[_selectedTabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: changeTab,
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
