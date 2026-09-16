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
          title: const Text('Text Styles'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Bold Text',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Text(
                'Italic Text',
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 20),

              const Text(
                'Large Font Text',
                style: TextStyle(
                  fontSize: 32,
                ),
                textAlign: TextAlign.right,
              ),

              const SizedBox(height: 20),

              const Text(
                'Different Text Styles',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}