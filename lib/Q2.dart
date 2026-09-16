import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Details'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: Ritika Bansal'),
              Text('Course:BCA'),
              Text('Semester: 5'),
              Text('College: COER UNIVERSITY'),
            ],
          ),
        ),
      ),
    );
  }
}