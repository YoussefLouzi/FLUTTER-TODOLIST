import 'package:flutter/material.dart';
import 'package:todolist_app/tasks.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter TodoList',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Tasks(),
      debugShowCheckedModeBanner: false,
    ),
  );
}