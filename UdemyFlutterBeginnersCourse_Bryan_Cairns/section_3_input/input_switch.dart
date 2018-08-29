import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) {
    setState(() {
      _value1 = value;
      debugPrint('Value 1: $_value1');
    });
  }

  void _onChanged2(bool value) {
    setState(() {
      _value2 = value;
      debugPrint('Value 2: $_value2');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Name Here',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Switch(
                value: _value1,
                onChanged: _onChanged1,
              ),
              new SwitchListTile(
                value: _value2,
                onChanged: _onChanged2,
                title: Text('Hello World'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
