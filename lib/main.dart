import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
      ),
      body: Column(
        children: [
          AutoSizeText(
            'A really long String A really long String',
            style: TextStyle(fontSize: 30),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

Flexible flexible() {
  return Flexible(
    child: Container(
      color: Colors.green,
      child: Text(
        'Flexible',
        style: TextStyle(fontSize: 25),
      ),
    ),
  );
}

Expanded expanded() {
  return Expanded(
    child: Container(
      color: Colors.red,
      child: Text(
        'Expanded',
        style: TextStyle(fontSize: 25),
      ),
    ),
  );
}
