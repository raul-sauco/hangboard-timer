import 'package:flutter/material.dart';

const int sets = 6;

class CreateTimerStepper extends StatefulWidget {
  const CreateTimerStepper({super.key});

  @override
  State<CreateTimerStepper> createState() => _CreateTimerStepperState();
}

class _CreateTimerStepperState extends State<CreateTimerStepper> {
  int _index = 0;

  List<Step> getSteps(int sets) {
    List<Step> mySteps = [];
    for (int i = 1; i <= sets; i++) {
      final _step = Step(
          title: Text('Set $i '),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Text('set $i reps '),
          ));
      mySteps.add(_step);
    }
    return mySteps;
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_index <= 0) {
            setState(() {
              _index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: getSteps(sets));
  }
}
