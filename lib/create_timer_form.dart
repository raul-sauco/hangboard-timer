import 'package:flutter/material.dart';
import 'package:hangboard_timer/main.dart';

import 'set_stepper.dart';

class Set {
  late List reps;
  late int restAfterset;

  Set(this.reps, this.restAfterset);
}

const List<num> repsSets = <num>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class CreateTimerForm extends StatefulWidget {
  const CreateTimerForm({super.key});

  @override
  State<CreateTimerForm> createState() => _CreateTimerState();
}

class _CreateTimerState extends State<CreateTimerForm> {
  final _timerNameTextController = TextEditingController();
  final _timerSetTextController = TextEditingController();

  // Clean up the controller when the widget is removed
  @override
  void dispose() {
    _timerNameTextController.dispose();
    _timerSetTextController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

//todo add numbers input field
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text('New Timer', style: Theme.of(context).textTheme.headlineMedium),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _timerNameTextController,
            validator: (value) {
              // todo form validation methods go here
              if (value == null || value.isEmpty) {
                return 'Please select value';
              }
              return null;
            },
            decoration: const InputDecoration(hintText: 'Timer Name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _timerSetTextController,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration:
                InputDecoration(hintText: 'sets', labelText: 'How many sets?'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //ScaffoldMessenger.of(context).showSnackBar(
                    //    const SnackBar(content: Text('Processing Data')));

                    Navigator.pushNamed(context, CreateRepsScreen.routeName,
                        arguments: ScreenArguments(
                          int.parse(_timerSetTextController.text),
                          _timerNameTextController.text,
                        ));
                  }
                },
                child: const Text('Next'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class RepsDropdownButton extends StatefulWidget {
  const RepsDropdownButton({super.key});

  @override
  State<RepsDropdownButton> createState() => _RepsDropdownButtonState();
}

class _RepsDropdownButtonState extends State<RepsDropdownButton> {
  num dropdownValue = repsSets.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<num>(
      //isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_circle),
      elevation: 16,
      style: Theme.of(context).textTheme.bodyLarge,
      underline: Container(
        height: 2,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      onChanged: (num? value) {
        // This is called when user selects an item
        setState(() {
          dropdownValue = value!;
        });
      },
      items: repsSets.map<DropdownMenuItem<num>>((num value) {
        return DropdownMenuItem<num>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}
