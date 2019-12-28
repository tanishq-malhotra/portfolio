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
          'Python application to scan a text document to obtain a clean and cropped image. Made using OpenCV'),
  
  Project(
      name: 'MedBot',
      image: Assets.chatbot,
      link: '',
      desc:
          'A Medical Chabot made in respect to PGI. Integrated with FaceBook Messenger and Google DialogFlow.'),
  
  Project(
      name: 'Virtual Mouse',
      image: Assets.hand,
      link: '',
      desc:
          'Virtual Mouse is an application which is made using Python and OpenCV which can fully control mouse events using hands with some props'),

  Project(
      name: 'Python Plays Super Mario',
      image: Assets.mario,
      link: '',
      desc:
          'Used CNN\'s to play mario with a mini vgg model trained on 20k sample images with input. V1 is a cnn implementation. A better implementation using Deep QNN\'s can be done and is in progress'),

  Project(
      name: 'Snake Game',
      image: Assets.snake,
      link: 'https://github.com/tanishq-malhotra/Snake-Game',
      desc:
          'Snake game implementation using c++. Custom Maps can be made by editing the pattern.txt file.'),
  
  Project(
      name: 'Computer Plays Snake Game',
      image: Assets.pcSnake,
      link: 'https://github.com/tanishq-malhotra/Computer-Plays-Snake-Game',
      desc:
          'Computer plays snake game. Used the BFS shortest path finding algorihtm for finding the path to the food.'),
  
  Project(
      name: 'Sudoku Solver',
      image: Assets.sudoku,
      link: 'https://github.com/tanishq-malhotra/Sudoku-Solver',
      desc:
          'Used the backtracking approach to solve a sudoku grid.'),
];
