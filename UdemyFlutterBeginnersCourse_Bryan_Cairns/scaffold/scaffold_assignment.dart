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

  void _onClick() {
    setState(() {
      _value = DateTime.now().toString();
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text('Hello Drawer'),
              RaisedButton(
                onPressed: _onClick,
                child: Text('Close Me'),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[Text(_value)],
          ),
        ),
      ),
    );
  }
}
