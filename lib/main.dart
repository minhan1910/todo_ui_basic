import 'package:flutter/material.dart';
import 'package:todo_app_basic/widgets/screens/todo_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoScreen(),
  ));
}
