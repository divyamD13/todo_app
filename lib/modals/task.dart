import 'package:flutter/material.dart';

enum Category{
  food,
  travel,
  work,
  leisure
}

class Task{
  final String taskName;
  final bool isTaskCompleted;
  final DateTime date;
  final Category category;

  Task({
  required this.taskName,
  required this.isTaskCompleted,
  required this.date,
  required this.category});
}