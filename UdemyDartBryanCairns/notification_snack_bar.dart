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
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _showBar() {
    _scaffoldState.currentState.showSnackBar(
      new SnackBar(
        content: Text(
          'Hello World!',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text(
          'Notification Snack Bar',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new RaisedButton(
                onPressed: _showBar,
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
