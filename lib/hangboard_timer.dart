import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'timer/bloc.dart';

class HangboardTimer extends StatelessWidget {
  const HangboardTimer({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TimerBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Hangboard Timer')),
      body: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${state.timeLeft}', style: const TextStyle(fontSize: 72)),
                const SizedBox(height: 24),
                switch (state) {
                  Initial() => ElevatedButton(
                    onPressed: () => bloc.add(const TimerEvent.start()),
                    child: const Text('Start'),
                  ),
                  Running() => ElevatedButton(
                    onPressed: () => bloc.add(const TimerEvent.pause()),
                    child: const Text('Pause'),
                  ),
                  Paused() => ElevatedButton(
                    onPressed: () => bloc.add(const TimerEvent.resume()),
                    child: const Text('Resume'),
                  ),
                },
                ElevatedButton(
                  onPressed: () => bloc.add(const TimerEvent.reset()),
                  child: const Text('Reset'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
