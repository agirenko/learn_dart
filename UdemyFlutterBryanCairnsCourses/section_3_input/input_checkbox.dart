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
  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _value2Changed(bool value) => setState(() => _value2 = value);

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
              Checkbox(
                value: _value1,
                onChanged: _value1Changed,
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: Text(
                  'Do you like icecream?',
                ),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: Text(
                  'It is subtitle',
                ),
                secondary: Icon(Icons.archive,),
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
