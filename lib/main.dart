import 'package:flutter/material.dart';

import 'hangboard_timer.dart';
import 'create_timer_form.dart';
import 'create_timer_stepper.dart';

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
          '/create/reps': (context) => const CreateRepsScreen(),
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
        title: const Text('Create New Timer'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
            child: const Text('Go back!'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CreateTimerForm(),
          ),
        ],
      ),
    );
  }
}

class CreateRepsScreen extends StatelessWidget {
  const CreateRepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Timer'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/create');
            },
            child: const Text('Go back!'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CreateTimerStepper(),
          ),
        ],
      ),
    );
  }
}
