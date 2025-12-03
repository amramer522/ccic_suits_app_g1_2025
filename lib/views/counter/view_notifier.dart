import 'package:flutter/material.dart';

class CounterNotifierView extends StatefulWidget {
  const CounterNotifierView({super.key});

  @override
  State<CounterNotifierView> createState() => _CounterNotifierViewState();
}

class _CounterNotifierViewState extends State<CounterNotifierView> {
  final counterNotifier = ValueNotifier(0);
  bool? isSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Listener(
          behavior: HitTestBehavior.translucent,
          onPointerMove: (event) {
            print('amr ${event.position}');
          },
          onPointerDown: (event) {
            print('amr dx ${event.position.dx},dy ${event.position.dy}');
            print('amr direction ${event.position.direction},distance ${event.position.distance}');
            print('amr distanceSquared ${event.position.distanceSquared}');
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hello")));
          },
        ),
        // child:   Checkbox(
        //   value: isSelect,
        //   onChanged: (value) {
        //     isSelect = value;
        //     setState(() {});
        //   },
        //   tristate: true,
        // ),
        // child: Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     IconButton(
        //       onPressed: () {
        //         counterNotifier.value--;
        //       },
        //       icon: const Icon(Icons.remove),
        //     ),
        //
        //     ValueListenableBuilder(
        //       valueListenable: counterNotifier,
        //       builder: (context, value, child) {
        //         return Text("${counterNotifier.value}");
        //       },
        //     ),
        //     IconButton(
        //       onPressed: () {
        //         counterNotifier.value++;
        //       },
        //       icon: const Icon(Icons.add),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
