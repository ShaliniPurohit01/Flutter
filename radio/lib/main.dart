import 'package:flutter/material.dart';
import 'package:radio/screen/login.dart';
import 'package:radio/screen/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      // home: SignupPage(),
    );
  }
}
