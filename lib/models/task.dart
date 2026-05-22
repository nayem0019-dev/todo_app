// ─────────────────────────────────────────────────────────
//  models/task.dart
//  A simple data class (model) that represents one task.
//  Every task has an id, title, time, status, and a colour
//  for the icon badge shown on the right side.
// ─────────────────────────────────────────────────────────

import 'package:flutter/material.dart';

// Possible status values for a task
enum TaskStatus {
  done,
  inProgress,
  toDo,
}

// Extension to get the display label and colours for each status
extension TaskStatusExtension on TaskStatus {
  // The text shown on the badge chip
  String get label {
    switch (this) {
      case TaskStatus.done:
        return 'Done';
      case TaskStatus.inProgress:
        return 'In Progress';
      case TaskStatus.toDo:
        return 'To-do';
    }
  }

  // Background colour of the status chip
  Color get chipColor {
    switch (this) {
      case TaskStatus.done:
        return const Color(0xFFEDE7FF); // light purple
      case TaskStatus.inProgress:
        return const Color(0xFFFFEEDD); // light orange
      case TaskStatus.toDo:
        return const Color(0xFFE8F4FF); // light blue
    }
  }

  // Text colour of the status chip
  Color get textColor {
    switch (this) {
      case TaskStatus.done:
        return const Color(0xFF7B2FFF); // purple
      case TaskStatus.inProgress:
        return const Color(0xFFFF6B00); // orange
      case TaskStatus.toDo:
        return const Color(0xFF1E90FF); // blue
    }
  }
}

// The Task data class
class Task {
  final String id;        // e.g. "01"
  final String title;     // e.g. "Market Research"
  final String time;      // e.g. "10:00 AM"
  final String timeAgo;   // e.g. "10 minutes ago" — null if not recent
  final TaskStatus status;
  final Color iconColor;  // background colour of the right-side icon badge
  final IconData icon;    // icon shown in the badge

  const Task({
    required this.id,
    required this.title,
    required this.time,
    this.timeAgo = '',
    required this.status,
    required this.iconColor,
    required this.icon,
  });
}
