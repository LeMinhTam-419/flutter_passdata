import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  String value;
  ScreenOne( {this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen2'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
