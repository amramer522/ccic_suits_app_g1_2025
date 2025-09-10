import 'package:flutter/material.dart';

// Custom Widget
class HelloWorldView extends StatelessWidget {
  const HelloWorldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hello, Ahmed!')),
    );
  }
}
