import 'package:flutter/material.dart';
import 'package:razum_test/screens/root_screen.dart';

import 'core/dependency/dependency.dart' as dependency;

void main() {
  dependency.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RootScreen(),
    );
  }
}
