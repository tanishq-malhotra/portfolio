import '../models/project.dart';
import './assets.dart';

final List<Project> projects = [
  Project(
      name: 'Expense Tracker',
      image: Assets.expTrack,
      link: 'https://github.com/tanishq-malhotra/Expense-Tracker',
      desc:
          'An Expense-Tracker for tracking weekly expenses made using Flutter. Shows a graph of expenses day wise.'),
  Project(
      name: 'Document Scanner',
      image: Assets.doc,
      link: 'https://github.com/tanishq-malhotra/Document-Scanner-OpenCV',
      desc:
          'Python program to scan the text document.'),
];
