import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterGitHub());
}

class FlutterGitHub extends StatelessWidget {
  const FlutterGitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter GitHub'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}