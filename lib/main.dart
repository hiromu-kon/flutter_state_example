import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_example/screen/my_home_page.dart';
import 'package:flutter_state_example/state/my_home_state.dart';
import 'package:flutter_state_example/view_model/main_home_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final myHomePageProvider =
    StateNotifierProvider<MyHomePageStateNotifier, MyHomePageState>(
        (ref) => MyHomePageStateNotifier());
