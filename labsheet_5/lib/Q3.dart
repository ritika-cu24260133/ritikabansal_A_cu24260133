import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q3()));
}

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1 to 100')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${index + 1}'),
          );
        },
      ),
    );
  }
}