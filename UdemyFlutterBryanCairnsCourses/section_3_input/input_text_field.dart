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

  void _onChange(String value) {
    setState(() {
      _value = 'Change: $value';
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = 'Submit: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Input Text Field',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Hello',
                  hintText: 'Hint',
                  icon: Icon(Icons.people),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
