// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

class ColorController extends ChangeNotifier {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.orange,
    Colors.blue
  ];

  Color defualtColor = Colors.red;

  changeColor() {
    var rand = Random().nextInt(colors.length);
    defualtColor = colors[rand];
    notifyListeners();
  }
}
