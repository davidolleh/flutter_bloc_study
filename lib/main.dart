import 'package:flutter/material.dart';
import 'package:flutter_bloc_study/view/map_screen.dart';
import 'package:flutter_map/flutter_map.dart';
import 'view/counter_page.dart';
import 'view/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC study',
      home: MapScreen(),//import alt + enter
    );
  }
}

