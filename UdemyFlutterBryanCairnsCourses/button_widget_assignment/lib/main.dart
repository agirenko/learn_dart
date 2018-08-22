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
  String _value = '';

  void _onPressed() {
    setState(() {
      _value = 'Alex Girenko';
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
              new Text(_value),
              new RaisedButton(
                onPressed: _onPressed,
                child: new Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
