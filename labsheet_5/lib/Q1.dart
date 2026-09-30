import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q1()));
}

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Five Items')),
      body: ListView(
        children: const [
          ListTile(title: Text('Apple')),
          ListTile(title: Text('Banana')),
          ListTile(title: Text('Mango')),
          ListTile(title: Text('Orange')),
          ListTile(title: Text('Grapes')),
        ],
      ),
    );
  }
}