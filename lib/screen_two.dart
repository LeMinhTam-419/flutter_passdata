import 'package:flutter/material.dart';


class ScreenTwo extends StatefulWidget {
  // List value;
  String value;
  ScreenTwo({Key key,@required this.value}): super(key: key);
  @override
  _ScreenTwoState createState() => _ScreenTwoState(value);
}

class _ScreenTwoState extends State<ScreenTwo> {

  // List value;
  String value;
  _ScreenTwoState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen2'),
      ),
      body: Center(
        // child: Text(value[0]),
        child: Text(value),
      ),
    );
  }
}
