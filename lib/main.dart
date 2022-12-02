import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const FlutterGitHub());
}

class FlutterGitHub extends StatelessWidget {
  const FlutterGitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GitHub',
      home: HomeScreen(),
    );
  }
}
