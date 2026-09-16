import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();

  String result = '';

  void calculate(String operation) {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;

    setState(() {
      if (operation == '+') {
        result = 'Result = ${a + b}';
      } else if (operation == '-') {
        result = 'Result = ${a - b}';
      } else if (operation == '*') {
        result = 'Result = ${a * b}';
      } else {
        result = b == 0 ? 'Cannot divide by zero' : 'Result = ${a / b}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () => calculate('+'),
                    child: const Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('-'),
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('*'),
                    child: const Text('×'),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate('/'),
                    child: const Text('÷'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(result, style: const TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}