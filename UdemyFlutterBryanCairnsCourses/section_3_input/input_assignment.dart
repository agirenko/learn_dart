import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = '';
  String _display = '';

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  void _onClicked() {
    setState(() {
      _display = _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'It is application name',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_display),
              TextField(
                onChanged: _onChanged,
              ),
              RaisedButton(
                onPressed: _onClicked,
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
