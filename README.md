# Module 7 Assignment — To-Do List UI (Flutter)

A Flutter app recreating the To-Do List UI from the Module 7 assignment.  
Only UI and navigation are implemented — no database, add, edit, or delete functionality.

---

## 📱 Screens

| Screen | Description |
|---|---|
| **Task List** | Shows all tasks in a ListView with Card widgets. Each card displays the task ID, title, time, and a status chip (Done / In Progress / To-do). |
| **Add Task** | A form screen with a Task Group display and a Description TextFormField. Has a full-width purple ElevatedButton at the bottom. |

---

## 🗂 Project Structure

```
lib/
├── main.dart                    # App entry point, theme setup
├── models/
│   └── task.dart                # Task data class and TaskStatus enum
├── screens/
│   ├── task_list_screen.dart    # Screen 1 — To-Do List
│   └── add_task_screen.dart     # Screen 2 — Add Task
└── widgets/
    └── task_card.dart           # Reusable card widget for each task
```

---

## 🧩 Widgets Used

| Widget | Where Used | Purpose |
|---|---|---|
| `Scaffold` | Both screens | Provides basic screen structure |
| `ListView.builder` | Task List screen | Efficiently renders the list of task cards |
| `Card` / `Container` | `task_card.dart` | Displays each task in a white rounded card |
| `TextFormField` | Add Task screen | Description input field |
| `ElevatedButton` | Add Task screen | The "Add" button at the bottom |
| `AppBar` | Add Task screen | Title bar with back arrow for navigation |
| `Navigator.push` | Task List screen | Navigate to Add Task screen |
| `Navigator.pop` | Add Task screen | Return to Task List screen |

---

## 🚀 How to Run

```bash
# 1. Clone this repository
git clone https://github.com/YOUR_USERNAME/todo_app.git
cd todo_app

# 2. Get dependencies
flutter pub get

# 3. Run the app
flutter run
```

**Requirements:** Flutter SDK 3.10+ and Dart SDK 3.0+

---

## 📋 Assignment Notes

- ✅ Scaffold used on both screens  
- ✅ ListView with Card/Container for task list  
- ✅ TextFormField for description input  
- ✅ ElevatedButton for the Add button  
- ✅ Navigation from Task List → Add Task (push) and back (pop)  
- ✅ UI matches the provided design screenshots  
- ❌ No database / CRUD functionality (not required)
