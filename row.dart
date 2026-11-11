import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Layouts')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Row Example
              const Text(
                'Row Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(color: Colors.red, height: 50, width: 50),
                  Container(color: Colors.green, height: 50, width: 50),
                  Container(color: Colors.blue, height: 50, width: 50),
                ],
              ),
              const SizedBox(height: 20),

              // Column Example
              const Text(
                'Column Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Container(color: Colors.orange, height: 50, width: 100),
                  Container(color: Colors.purple, height: 50, width: 100),
                  Container(color: Colors.teal, height: 50, width: 100),
                ],
              ),
              const SizedBox(height: 20),

              // Stack Example
              const Text(
                'Stack Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(color: Colors.amber, height: 150, width: 150),
                  Container(color: Colors.indigo, height: 100, width: 100),
                  Container(color: Colors.pink, height: 50, width: 50),
                  const Text(
                    'Text',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
