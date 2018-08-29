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
  int _valueInt = 0;

  void _add() {
    setState(() {
      _valueInt++;
    });
  }

  void _subtract() {
    setState(() {
      _valueInt--;
    });
  }

  String _value = "Hello World";

  void _onPressed(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Raised Button Sample',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Value =$_valueInt'),
              RaisedButton(
                onPressed: () => _onPressed('my name is Oleksandr.'),
                child: Text('Click me'),
              ),
              FlatButton(
                onPressed: () => _onPressed('My name is Oleksandr (aka Alex).'),
                child: Text('Click me'),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: _add,
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: _subtract,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
