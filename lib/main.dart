import 'package:flutter/material.dart';

import 'hangboard_timer.dart';
import 'create_timer_form.dart';
import 'create_timer_stepper.dart';

void main() {
  runApp(const HangboardTimerApp());
}

class ScreenArguments {
  final int sets;

  ScreenArguments(this.sets);
}

class HangboardTimerApp extends StatelessWidget {
  const HangboardTimerApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => const TimerScreen(),
          '/create': (context) => const CreateTimerScreen(),
          CreateRepsScreen.routeName: (context) => const CreateRepsScreen(),
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

class CreateRepsScreen extends StatefulWidget {
  const CreateRepsScreen({super.key});

  static const routeName = '/create/rep';

  @override
  State<CreateRepsScreen> createState() => _CreateRepsState();
}

class _CreateRepsState extends State<CreateRepsScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(args.sets.toString()),
    );
  }
}



//class _CreateRepsState extends State<CreateRepsScreen> {
//  int _formCount = 0;
//  final List<Map<int, dynamic>> _dataArray = [];
//  int? _data = 0;

//  int _index = 0;

//  List<Step> getSteps(int sets) {
//    List<Step> mySteps = [];
//    for (int i = 1; i <= sets; i++) {
//      final _step = Step(
//          title: Text('Set $i '),
//          content: Container(
//            alignment: Alignment.centerLeft,
//            child: Column(
//              children: [
//                Text('set $i reps '),
//                ...List.generate(_formCount, (index) => repForm(index)),
//                buttonRow(),
//                Visibility(
//                    visible: _dataArray.isNotEmpty,
//                    child: Text(_data!.toString())),
//              ],
//            ),
//          ));
//      mySteps.add(_step);
//    }
//    return mySteps;
//  }

//  Widget repForm(int key) => Padding(
//        padding: const EdgeInsets.only(bottom: 10.0),
//        child: TextFormField(
//          decoration: InputDecoration(hintText: 'Form ${key + 1}'),
//          onChanged: null,
//        ),
//      );

//  Widget buttonRow() => Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          Visibility(
//            visible: _formCount > 0,
//            child: IconButton(
//                onPressed: () {
//                  if (_dataArray.isNotEmpty) {
//                    _dataArray.removeAt(_dataArray.length - 1);
//                  }
//                  setState(() {
//                    _data = _dataArray.toString() as int?;
//                    _formCount--;
//                  });
//                },
//                icon: const CircleAvatar(
//                  backgroundColor: Colors.red,
//                  child: Icon(
//                    Icons.remove,
//                  ),
//                )),
//          ),
//          IconButton(
//              onPressed: () {
//                setState(() => _formCount++);
//              },
//              icon: const CircleAvatar(
//                backgroundColor: Colors.teal,
//                child: Icon(
//                  Icons.add,
//                ),
//              )),
//        ],
//      );

//  Widget Stepper(_index)=>Stepper(
//        currentStep: _index,
//        onStepCancel: () {
//          if (_index > 0) {
//            setState(() {
//              _index -= 1;
//            });
//          }
//        },
//        onStepContinue: () {
//          if (_index <= 0) {
//            setState(() {
//              _index += 1;
//            });
//          }
//        },
//        onStepTapped: (int index) {
//          setState(() {
//            _index = index;
//          });
//        },
//        steps: getSteps(sets));

        
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('Create New Timer'),
//      ),
//      body: Column(
//        mainAxisSize: MainAxisSize.min,
//        children: [
//          ElevatedButton(
//            onPressed: () {
//              Navigator.of(context).pushNamed('/create');
//            },
//            child: const Text('Go back!'),
//          ),
//          Padding(
//            padding: EdgeInsets.all(8.0),
//            child: const CreateTimerStepper(),
//          ),
//        ],
//      ),
//    );
//  }
//}
