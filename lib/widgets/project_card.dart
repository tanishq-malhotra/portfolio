import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard(this.project);

  void handleProjectTap() {
    if(project.link.length > 0){
      html.window.open(project.link, 'tanishq-malhotra');
    }
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: handleProjectTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 40,
              child: Image.asset(
                project.image,
                width: width * 0.25,
                height: height * 0.25,
              ),
            ),
            SizedBox(
              width: width * 0.5,
            ),
            Expanded(
              flex: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(project.name),
                  Text(project.desc),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
