import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class DetailScreen extends StatelessWidget {
  final Task task;

  DetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.name),
      ),
      body: Center(
        child: Hero(
          tag: task.name,
          child: TaskCard(task: task),
        ),
      ),
    );
  }
}
