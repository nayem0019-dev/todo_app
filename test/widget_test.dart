// This file is a placeholder for widget tests.
// No tests are required for this UI assignment.

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());
    expect(find.text('To-Do List'), findsOneWidget);
  });
}
