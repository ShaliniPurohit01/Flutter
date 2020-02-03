import 'package:flutter/material.dart';
import 'package:practice_app/screens/practice_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Practice(),
    );
  }
}
