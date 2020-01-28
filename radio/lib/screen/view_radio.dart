import 'package:flutter/material.dart';

class ViewRadio extends StatelessWidget {
  final String radioId;

  ViewRadio({this.radioId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The show '),
      ),
      body: Container(),
    );
  }
}
