import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Q10()));
}

class Q10 extends StatelessWidget {
  const Q10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless vs Stateful')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'StatelessWidget: Fixed Text',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 30),
          Counter(),
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stateful Counter: $count',
          style: const TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Increase'),
        ),
      ],
    );
  }
}