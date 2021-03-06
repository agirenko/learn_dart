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
  int _value = 0;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _remove() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello World',
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.add,
            ),
            onPressed: _add,
          ),
          new IconButton(
            icon: new Icon(Icons.remove),
            onPressed: _remove,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                _value.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
