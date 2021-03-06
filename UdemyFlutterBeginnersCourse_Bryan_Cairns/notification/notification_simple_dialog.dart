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

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = '';

  void _setValue(String value) {
    setState(() {
      _value = value;
    });
  }

  Future _askUser() async {
    switch (await showDialog(
      context: context,
      child: new SimpleDialog(
        title: Text('Do you like Flutter?'),
        children: <Widget>[
          new SimpleDialogOption(
            child: Text('Yes!'),
            onPressed: () {
              Navigator.pop(
                context,
                Answers.YES,
              );
            },
          ),
          new SimpleDialogOption(
            child: Text('No :-('),
            onPressed: () {
              Navigator.pop(
                context,
                Answers.NO,
              );
            },
          ),
          new SimpleDialogOption(
            child: Text('Maybe :|'),
            onPressed: () {
              Navigator.pop(
                context,
                Answers.MAYBE,
              );
            },
          ),
        ],
      ),
    )) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(_value);
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification Simple Dialog',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Answer Is $_value'),
              RaisedButton(
                onPressed: _askUser,
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
