import 'package:flutter/material.dart';

import '../../timer/screens/hangboard_timer.dart';

class App extends StatelessWidget {
  const App({super.key});

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
