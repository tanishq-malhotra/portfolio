import 'package:flutter/material.dart';

class Project {
  final String name;
  final String desc;
  final String image;
  final String link;
  const Project({@required this.name, @required this.desc, @required this.image, this.link});
}