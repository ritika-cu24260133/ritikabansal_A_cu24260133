import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const Q6());
}

class Q6 extends StatefulWidget {
  const Q6({super.key});

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  bool dark = false;

  @override
  void initState() {
    super.initState();
    loadMode();
  }

  Future<void> loadMode() async {
    final p = await SharedPreferences.getInstance();
    setState(() {
      dark = p.getBool('dark') ?? false;
    });
  }

  Future<void> changeMode(bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool('dark', value);
    setState(() {
      dark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: dark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Dark Mode')),
        body: Center(
          child: Switch(
            value: dark,
            onChanged: changeMode,
          ),
        ),
      ),
    );
  }
}