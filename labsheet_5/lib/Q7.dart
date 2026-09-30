import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q7()));
}

class Q7 extends StatelessWidget {
  const Q7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Grid')),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          Icon(Icons.home, size: 60),
          Icon(Icons.person, size: 60),
          Icon(Icons.settings, size: 60),
          Icon(Icons.phone, size: 60),
          Icon(Icons.email, size: 60),
          Icon(Icons.star, size: 60),
        ],
      ),
    );
  }
}