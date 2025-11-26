import 'package:flutter/material.dart';
import 'package:todolist_app/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});
  
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          task.title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}