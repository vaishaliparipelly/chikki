import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: size,
              width: size,
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  size = size == 100 ? 200 : 100;
                });
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}