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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts Expanded'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Image Demo'),
              Expanded(
                child: Image.asset(
                  'images/flutter.jpg',
                ),
              ),
              Expanded(
                child: Image.network(
                  'http://voidrealms.com/images/smile.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
