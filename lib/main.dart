import 'package:flutter/material.dart';
import 'view/counter_page.dart';
import 'view/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BLoC study',
      home: CounterPage(),//import alt + enter
    );
  }
}

