import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class HangBoardTimer extends StatefulWidget {
  const HangBoardTimer({Key? key}) : super(key: key);

  @override
  State<HangBoardTimer> createState() => _HangBoardTimerState();
}

class _HangBoardTimerState extends State<HangBoardTimer> {
  // Some variables, this will all end up being user-editable.
  bool _isHanging = false;
  final int _totalSets = 12;
  int _currentSet = 0;
  final int _workTime = 7;
  final int _pauseTime = 3;
  final int _restTime = 60;
  int _time = 0;
  int _remainingHangingTime = 20000;

  Timer? _timer;

  void _startTimer() {
    _isHanging = true;
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      setState(() {
        _remainingHangingTime -= 100;
        _time = _remainingHangingTime ~/ 1000;
        if (_remainingHangingTime <= 0) {
          Vibration.vibrate(duration: 1000);
          _isHanging = false;
          _stopTimer();
        }
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isHanging = false;
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    setState(() {
      _isHanging = false;
      _remainingHangingTime = 20000;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hang Board Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _isHanging ? 'Hang!' : "Rest",
            style: const TextStyle(fontSize: 60),
          ),
          const SizedBox(height: 50),
          Text(
            '${_remainingHangingTime ~/ 60000}:${((_remainingHangingTime ~/ 1000) % 60).toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 60),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _isHanging ? null : _startTimer,
                child: const Text('Start'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: _isHanging ? _stopTimer : null,
                child: const Text('Stop'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: _resetTimer,
                child: const Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
