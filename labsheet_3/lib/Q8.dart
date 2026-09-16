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
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();

  String result = '';

  void calculatePercentage() {
    double a = double.tryParse(m1.text) ?? 0;
    double b = double.tryParse(m2.text) ?? 0;
    double c = double.tryParse(m3.text) ?? 0;

    double percentage = ((a + b + c) / 300) * 100;

    setState(() {
      result = 'Percentage = ${percentage.toStringAsFixed(2)}%';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Percentage Calculator')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: m1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Subject 1 Marks'),
              ),
              TextField(
                controller: m2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Subject 2 Marks'),
              ),
              TextField(
                controller: m3,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Subject 3 Marks'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: calculatePercentage,
                child: const Text('Calculate Percentage'),
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