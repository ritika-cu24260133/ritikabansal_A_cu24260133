import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q6()));
}

class Q6 extends StatelessWidget {
  const Q6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal List')),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(width: 120, color: Colors.red, child: const Center(child: Text('1'))),
          Container(width: 120, color: Colors.blue, child: const Center(child: Text('2'))),
          Container(width: 120, color: Colors.green, child: const Center(child: Text('3'))),
          Container(width: 120, color: Colors.orange, child: const Center(child: Text('4'))),
        ],
      ),
    );
  }
}