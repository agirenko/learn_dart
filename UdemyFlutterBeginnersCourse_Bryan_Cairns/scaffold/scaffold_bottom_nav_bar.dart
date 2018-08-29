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
  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = new List<BottomNavigationBarItem>();
    _items.add(new BottomNavigationBarItem(
        icon: Icon(Icons.people), title: Text('People')));
    _items.add(new BottomNavigationBarItem(
        icon: Icon(Icons.weekend), title: Text('Weekend')));
    _items.add(new BottomNavigationBarItem(
        icon: Icon(Icons.message), title: Text('Message')));
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
              Text(_value),
            ],
          ),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          items: _items,
          fixedColor: Colors.blue,
          onTap: (int item) {
            setState(() {
              _index = item;
              _value = 'Current value is: ${_index.toString()}';
            });
          }),
    );
  }
}
