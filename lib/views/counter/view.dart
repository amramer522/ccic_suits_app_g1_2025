import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
import 'states.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build CounterView");
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Builder(builder: (context) {
        CounterCubit cubit = BlocProvider.of(context);
        return Scaffold(
          body: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: cubit.plus,
                  icon: const Icon(Icons.add),
                ),
                BlocBuilder(
                  bloc: cubit,
                  builder: (context, state) {
                    print("build Text of Count");
                    return Text(
                    "${cubit.count}\n${state.runtimeType}",
                    textAlign: TextAlign.center,
                  );
                  },
                ),
                IconButton(
                  onPressed: cubit.minus,
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

// create two file (cubit - states)
// create one parent state and some child states
// create class and extend Cubit and assign the initial state
// move the logic from view to cubit
// Wrap the whole page with BlocProvider
// Take Object from the Cubit
// Wrap the widget that need to rebuild with BlocBuilder






