import 'package:flutter/material.dart';
import 'package:todolist_app/models/task.dart';
import 'package:todolist_app/tasks_list.dart';
import 'package:todolist_app/widgets/new_task.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});
  
  @override
  State<Tasks> createState() {
    return _TasksState();
  }
}

class _TasksState extends State<Tasks> {
  final List<Task> _registeredTasks = [
    Task(
      title: 'Apprendre Flutter',
      description: 'Suivre le cours pour apprendre de nouvelles compétences',
      date: DateTime.now(),
      category: Category.work,
    ),
    Task(
      title: 'Faire les courses',
      description: 'Acheter des provisions pour la semaine',
      date: DateTime.now().subtract(const Duration(days: 1)),
      category: Category.shopping,
    ),
    Task(
      title: 'Rédiger un CR',
      description: '',
      date: DateTime.now().subtract(const Duration(days: 2)),
      category: Category.personal,
    ),
  ];

  Future<void> _addTask(Task task) async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _registeredTasks.add(task);
    });
    Navigator.pop(context);
  }

  void _openAddTaskOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewTask(onAddTask: _addTask),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text(
        'Aucune tâche trouvée. Commencez par en ajouter une !',
        style: TextStyle(fontSize: 16),
      ),
    );

    if (_registeredTasks.isNotEmpty) {
      mainContent = TasksList(tasks: _registeredTasks);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ToDoList'),
        actions: [
          IconButton(
            onPressed: _openAddTaskOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Mes Tâches',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}