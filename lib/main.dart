import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'timer/bloc.dart';
import 'hangboard_timer.dart';

void main() {
  runApp(const HangboardApp());
}

class HangboardApp extends StatelessWidget {
  const HangboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hangboard Timer',
      home: BlocProvider(
        create: (_) => TimerBloc(),
        child: const HangboardTimer(),
      ),
    );
  }
}
