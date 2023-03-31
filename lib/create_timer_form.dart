import 'package:flutter/material.dart';

class CreateTimerForm extends StatefulWidget {
  const CreateTimerForm({super.key});

  @override
  State<CreateTimerForm> createState() => _CreateTimerState();
}

class _CreateTimerState extends State<CreateTimerForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text('New Timer', style: Theme.of(context).textTheme.headlineMedium),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
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
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')));
              }
            },
            child: const Text('Submit'),
          ),
        )
      ]),
    );
  }
}
