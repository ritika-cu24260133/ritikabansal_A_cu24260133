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
    double n = double.tryParse(number.text) ?? 0;

    setState(() {
      if (n > 0) {
        result = 'Positive Number';
      } else if (n < 0) {
        result = 'Negative Number';
      } else {
        result = 'Zero';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Number Check')),
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
                child: const Text('Check Number'),
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