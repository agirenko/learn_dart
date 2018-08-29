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
  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value) => setState(() {
        _value1 = value;
        debugPrint(_value1.toString());
      });

  void _setValue2(int value) => setState(() {
        _value2 = value;
        debugPrint(_value2.toString());
      });

  Widget makeRadios() {
    List<Widget> list = List<Widget>();
    for (int i = 0; i < 3; i++) {
      list.add(Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setValue1,
      ));
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  Widget makeRadioTitles() {
    List<Widget> list = List<Widget>();
    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item $i'),
        subtitle: Text('sub title'),
      ));
    }
    Column column = Column(
      children: list,
    );
    return column;
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
              makeRadios(),
              makeRadioTitles(),
            ],
          ),
        ),
      ),
    );
  }
}
