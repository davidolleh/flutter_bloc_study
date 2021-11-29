import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_study/bloc/counter_bloc.dart';
import 'package:flutter_bloc_study/bloc/cubit_counter_cubit.dart';
import 'package:flutter_bloc_study/view/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_)=> CounterCubit(),
        child: const CounterView(),
    );
  }
}
