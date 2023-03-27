import 'package:flutter/material.dart';

import 'hangboard_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hang Board Timer Demo',
      home: const HangBoardTimer(),
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(),
      ),
    );
  }
}
