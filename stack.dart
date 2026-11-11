import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Layouts')),
        body: Column(
          children: [
            Text('Row Layout'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: Center(child: Text('A')),
                ),

                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                  child: Center(child: Text('B')),
                ),

                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: Center(child: Text('C')),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text('COLUMN LAYOUT'),

            Column(children: [Text('Apple'), Text('Banana'), Text('Mango')]),

            SizedBox(height: 20),

            Text('STACK LAYOUT'),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 150, width: 150, color: Colors.orange),

                Container(height: 50, width: 50, color: Colors.blue),

                Text('STACK'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
