import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q5(),
  ));
}

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  Future<void> loadCounter() async {
    final p = await SharedPreferences.getInstance();
    setState(() {
      count = p.getInt('count') ?? 0;
    });
  }

  Future<void> increase() async {
    final p = await SharedPreferences.getInstance();
    count++;
    await p.setInt('count', count);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count', style: const TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: increase,
              child: const Text('Increase'),
            ),
          ],
        ),
      ),
    );
  }
}