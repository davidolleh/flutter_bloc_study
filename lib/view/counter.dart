import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_study/bloc/counter_bloc.dart';
import 'package:flutter_bloc_study/bloc/cubit_counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter'),
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
            FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  context.read<CounterCubit>().increment();
                  //현재 상황
                  // counterBloc.add(IncrementPressed());
                }
            ),
            FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                }
            ),
          ],
        ),
      ),
    );
  }
}
