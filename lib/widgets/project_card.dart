import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard(this.project);

  void handleProjectTap() {
    if (project.link.length > 0) {
      html.window.open(project.link, 'tanishq-malhotra');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: InkWell(
        onTap: handleProjectTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 40,
                child: Image.asset(
                  project.image,
                  width: width * 0.25,
                  height: width * 0.25,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        project.name,
                        style: TextStyle(
                          fontFamily: 'GoogleSansRegular',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        project.desc,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
