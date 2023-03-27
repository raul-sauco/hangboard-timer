import 'dart:async';
import 'dart:math';

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
  final int _hangTime = 20000;
  int _remainingHangingTime = 20000;
  final int _refreshRate = 10;

  Timer? _timer;

  void _startTimer() {
    _isHanging = true;
    _timer = Timer.periodic(Duration(milliseconds: _refreshRate), (_) {
      setState(() {
        _remainingHangingTime -= _refreshRate;
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
      _remainingHangingTime = _hangTime;
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
      body: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1 - max(_remainingHangingTime / _hangTime, 0),
            child: Container(
              color: Colors.green,
            ),
          ),
          Column(
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
        ],
      ),
    );
  }
}
