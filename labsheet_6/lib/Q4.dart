import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q4(),
  ));
}

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  String name = 'Ritikka';

  @override
  void initState() {
    super.initState();
    saveName();
  }

  Future<void> saveName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'Ritikka');

    setState(() {
      name = prefs.getString('name') ?? 'Ritikka';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences'),
      ),
      body: Center(
        child: Text(
          'Saved Name: $name',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}