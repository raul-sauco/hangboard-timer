import 'gi.dart' as gi;
import 'package:flutter/material.dart';

import 'presentation/core/screens/app.dart';

void main() async {
  await gi.init();
  runApp(const App());
}
