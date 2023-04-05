import 'package:flutter/material.dart';

import 'show_dialog.dart';

class ScreenArguments {
  final int sets;

  ScreenArguments(this.sets);
}

class SetsStepperWidget extends StatefulWidget {
  const SetsStepperWidget({super.key});

  @override
  State<SetsStepperWidget> createState() => _SetsStepperState();
}

// Group controller for the rep form
class _RepControllers {
  TextEditingController hangTime = TextEditingController();
  TextEditingController restTime = TextEditingController();
  void dispose() {
    hangTime.dispose();
    restTime.dispose();
  }
}

class _SetsStepperState extends State<SetsStepperWidget> {
  // Step counts
  int currentStep = 0;

  List<_RepControllers> _repControllers = [];
  List<TextField> _hangTimeFields = [];
  List<TextField> _restTimeFields = [];

  List setsData = [];

  @override
  void dispose() {
    for (final controller in _repControllers) {
      controller.dispose();
    }
    _saveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    int sets = args.sets;

    return Stepper(
        type: StepperType.horizontal,
        currentStep: currentStep,
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() {
              currentStep -= 1;
            });
          }
        },
        onStepContinue: () {
          bool isLastStep = (currentStep == sets - 1);

          if (isLastStep) {
            // submit the form
            print(setsData.toString());
          } else {
            setState(() {
              currentStep += 1;
            });
          }
        },
        onStepTapped: (step) => setState(
              () {
                currentStep = step;
              },
            ),
        steps: getSteps(sets));
  }

  // Function stepper widget

  List<Step> getSteps(int sets) {
    List<Step> mySteps = [];
    for (int i = 1; i <= sets; i++) {
      final _step = Step(
          title: Text('Set $i '),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                SizedBox(height: 400, child: _listView()),
                _addRep(),
                _saveButton(context, i),
              ],
            ),
          ));
      mySteps.add(_step);
    }
    return mySteps;
  }

  Widget _addRep() {
    return ListTile(
      title: Icon(Icons.add),
      onTap: () {
        final rep = _RepControllers();

        final hangTimeField = _generateTextField(rep.hangTime, 'hang time');
        final restTimeField = _generateTextField(rep.restTime, 'rest time');

        setState(() {
          _repControllers.add(rep);
          _hangTimeFields.add(hangTimeField);
          _restTimeFields.add(restTimeField);
        });
      },
    );
  }

  TextField _generateTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hint,
      ),
    );
  }

  Widget _listView() {
    final children = [
      for (var i = 0; i < _repControllers.length; i++)
        Container(
          margin: EdgeInsets.all(5),
          child: InputDecorator(
            child: Column(
              children: [_hangTimeFields[i], _restTimeFields[i]],
            ),
            decoration: InputDecoration(
              labelText: 'Rep ${i + 1}',
            ),
          ),
        ),
    ];
    return SingleChildScrollView(
        child: Column(
      children: children,
    ));
  }

  final _saveController = TextEditingController();
  Widget _saveButton(BuildContext context, int set) {
    final textField = TextField(
      controller: _saveController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Rest after set",
      ),
    );

    final button = ElevatedButton(
      onPressed: () async {
        final restAfterSet = int.parse(_saveController.text);
        List reps = [];
        for (var index = 0; index < _repControllers.length; index++) {
          String rep = "hangTime: ${_repControllers[index].hangTime.text}\n" +
              "restTime: ${_repControllers[index].restTime.text}\n";
          reps.add(rep);
        }

        Map setData = {
          'set': set.toString(),
          'reps': reps.toString(),
          'rest': restAfterSet
        };

        setState(() {
          setsData.add(setData);
        });

        await showMessage(context, setData.toString(), "set");
      },
      child: Text("Save"),
    );
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: textField,
          width: 200,
          height: 50,
        ),
        button,
      ],
    );
  }
}
