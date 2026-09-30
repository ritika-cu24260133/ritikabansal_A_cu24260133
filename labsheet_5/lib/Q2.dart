import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q2()));
}

class Q2 extends StatelessWidget {
  const Q2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Rahul'),
            subtitle: Text('BCom Student'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Priya'),
            subtitle: Text('BBA Student'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Aman'),
            subtitle: Text('BCA Student'),
          ),
        ],
      ),
    );
  }
}