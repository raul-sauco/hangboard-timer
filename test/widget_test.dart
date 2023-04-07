import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hangboard_timer/presentation/core/screens/app.dart';

void main() {
  testWidgets('Timer can be started', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('Rest'), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, 'Start'));
    await tester.pumpAndSettle();
    expect(find.text('Rest'), findsNothing);
    expect(find.text('Hang!'), findsOneWidget);
  });

  testWidgets('Timer can be stopped', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.tap(find.widgetWithText(ElevatedButton, 'Start'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ElevatedButton, 'Stop'));
    await tester.pumpAndSettle();
    expect(find.text('Hang!'), findsNothing);
    expect(find.text('Rest'), findsOneWidget);
  });
}
