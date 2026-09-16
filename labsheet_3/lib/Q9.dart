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
  final number = TextEditingController();
  String result = '';

  void checkNumber() {
    int n = int.tryParse(number.text) ?? 0;

    setState(() {
      result = n % 2 == 0 ? 'Even Number' : 'Odd Number';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Even or Odd')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: number,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: checkNumber,
                child: const Text('Check'),
              ),
              const SizedBox(height: 20),
              Text(result, style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}