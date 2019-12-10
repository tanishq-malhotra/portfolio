import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import '../config/projects.dart';
import '../widgets/project_card.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      largeScreen: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        children: projects.map((data) => ProjectCard(data)).toList(),
      ),
    );
  }
}
