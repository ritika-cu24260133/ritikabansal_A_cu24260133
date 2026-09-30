import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q7(),
  ));
}

class Q7 extends StatefulWidget {
  const Q7({super.key});

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  bool remember = false;

  @override
  void initState() {
    super.initState();
    loadRemember();
  }

  Future<void> loadRemember() async {
    final p = await SharedPreferences.getInstance();
    setState(() {
      remember = p.getBool('remember') ?? false;
    });
  }

  Future<void> saveRemember(bool value) async {
    final p = await SharedPreferences.getInstance();
    await p.setBool('remember', value);
    setState(() {
      remember = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Username: Ritikka'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: remember,
                  onChanged: (v) => saveRemember(v!),
                ),
                const Text('Remember Me'),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}