import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q8(),
  ));
}

class Q8 extends StatefulWidget {
  const Q8({super.key});

  @override
  State<Q8> createState() => _Q8State();
}

class _Q8State extends State<Q8> {
  String name = 'Ritikka';
  String email = 'ritikka@gmail.com';
  int age = 20;

  @override
  void initState() {
    super.initState();
    saveData();
  }

  Future<void> saveData() async {
    final p = await SharedPreferences.getInstance();
    await p.setString('name', name);
    await p.setString('email', email);
    await p.setInt('age', age);

    setState(() {
      name = p.getString('name') ?? '';
      email = p.getString('email') ?? '';
      age = p.getInt('age') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: Center(
        child: Text(
          'Name: $name\nEmail: $email\nAge: $age',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}