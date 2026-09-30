import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q4()));
}

class Q4 extends StatelessWidget {
  const Q4({super.key});

  final List<String> names = const [
    'Rahul',
    'Priya',
    'Aman',
    'Neha',
    'Riya',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Names')),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}