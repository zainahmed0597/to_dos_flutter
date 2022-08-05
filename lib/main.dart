import 'package:flutter/material.dart';
import 'package:to_dos/widgets/calandert_timeline.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To_dos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalanderTimeLine(),
    );
  }
}
