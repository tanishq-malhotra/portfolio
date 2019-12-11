import 'package:flutter/material.dart';

class ThemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;
  const ThemeSwitcher({
    Key key,
    @required this.data,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static _ThemeSwitcherWidgetState of(BuildContext ctx) {
    final ancestor = ctx.dependOnInheritedWidgetOfExactType<ThemeSwitcher>();
    return ancestor.data;
  }

  bool updateShouldNotify(ThemeSwitcher old) {
    return this != old;
  }
}

class ThemeSwitcherWidget extends StatefulWidget {
  final bool initialDarkMode;
  final Widget child;
  ThemeSwitcherWidget({Key key, this.initialDarkMode, this.child});
  @override
  _ThemeSwitcherWidgetState createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  bool isDarkModeOn;

  void switchDarkMode() {
    setState(() {
      isDarkModeOn = !isDarkModeOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    isDarkModeOn = isDarkModeOn ?? widget.initialDarkMode;
    return ThemeSwitcher(
      data: this,
      child: widget.child,
    );
  }
}
