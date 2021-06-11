import 'package:flutter/material.dart';
import 'package:pass_data_22_3_21/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String >names=["John","clay"];
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text) {
              value = text;
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                // builder: (context) => screentwo(value: names),
                builder: (context) => ScreenTwo(value: value),
              ));
            },
            child: Text('Switch'),
          ),
        ],
      ),
    );
  }
}
