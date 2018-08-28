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

  void _onClick(String value) {
    setState(() {
      _value = value;
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
      persistentFooterButtons: <Widget>[
        new IconButton(
          icon: Icon(Icons.timer),
          onPressed: () => _onClick('Button 1'),
        ),
        new IconButton(
          icon: Icon(Icons.people),
          onPressed: () => _onClick('Button 2'),
        ),
        new IconButton(
          icon: Icon(Icons.map),
          onPressed: () => _onClick('Button 3'),
        ),
      ],
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}
