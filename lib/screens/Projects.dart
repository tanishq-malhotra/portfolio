import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import '../config/projects.dart';
import '../widgets/project_card.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      largeScreen: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.2),
        children: List.generate(
          projects.length,
          (index) => ProjectCard(projects[index]),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (ctx, index) => ProjectCard(projects[index]),
      ),
    );
  }
}
