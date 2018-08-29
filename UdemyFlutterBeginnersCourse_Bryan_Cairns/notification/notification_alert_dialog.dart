import 'package:flutter/material.dart';
import 'dart:async';

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
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: Text(message),
        actions: <Widget>[
          RaisedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'OK',
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification Alert Dialog',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Controls Here'),
              RaisedButton(
                onPressed: () => _showAlert(
                      context,
                      'Do you want to learn Flutter?',
                    ),
                child: Text('Click Me To Show Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
