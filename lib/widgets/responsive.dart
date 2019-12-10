import 'package:flutter/material.dart';


class ResponsiveScreen extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveScreen({@required this.largeScreen, this.smallScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, contraints) {
          if(contraints.maxWidth > 1200)
            return largeScreen;
          else return smallScreen;
      },
    );
  }
}