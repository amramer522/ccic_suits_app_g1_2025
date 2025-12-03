import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimView extends StatefulWidget {
  const TweenAnimView({super.key});

  @override
  State<TweenAnimView> createState() => _TweenAnimViewState();
}

class _TweenAnimViewState extends State<TweenAnimView> {
  double endValue = 0;
  bool isEnded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => TweenAnimationBuilder(
          duration: const Duration(milliseconds: 200),
          tween: Tween<double>(begin: 0, end: isEnded && index==0 ? 0 : 2 * pi),
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(0, sin(value)),
              child: child!,
            );
          },
          child: ListTile(
            title: const Text("Hello"),
            onTap: () {
              isEnded = !isEnded;
              setState(() {});
            },
            leading: CircleAvatar(),
            subtitle: Text("Hello From the Other World"),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: 10,
      ),
    );
  }
}
