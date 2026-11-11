import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyForm()));

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Name')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(decoration: InputDecoration(labelText: 'Password')),
            ElevatedButton(onPressed: () {}, child: Text("submit")),
          ],
        ),
      ),
    );
  }
}
