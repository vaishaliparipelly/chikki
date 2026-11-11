import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Widgets')),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello Flutter!',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.yellow,
                child: Center(child: Text('Container Widget')),
              ),
              Image.network(
                'https://picsum.photos/200',
                height: 150,
                width: 150,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Click me')),
              Icon(Icons.flutter_dash, size: 60, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
