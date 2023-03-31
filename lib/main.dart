import 'package:flutter/material.dart';

import 'hangboard_timer.dart';

void main() {
  runApp(const HangboardTimerApp());
}

class HangboardTimerApp extends StatelessWidget {
  const HangboardTimerApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => const TimerScreen(),
          '/create': (context) => const CreateTimerScreen(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(),
        ));
  }
}

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const HangBoardTimer(),
      ),
    );
  }
}

class CreateTimerScreen extends StatelessWidget {
  const CreateTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
