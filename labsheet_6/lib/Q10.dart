import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q10(),
  ));
}

class Q10 extends StatefulWidget {
  const Q10({super.key});

  @override
  State<Q10> createState() => _Q10State();
}

class _Q10State extends State<Q10> {
  String name = 'Ritikka';

  Future<void> saveData() async {
    final p = await SharedPreferences.getInstance();
    await p.setString('name', 'Ritikka');

    setState(() {
      name = 'Ritikka';
    });
  }

  Future<void> clearData() async {
    final p = await SharedPreferences.getInstance();
    await p.clear();

    setState(() {
      name = 'No Data';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clear Data')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveData,
              child: const Text('Save'),
            ),
            ElevatedButton(
              onPressed: clearData,
              child: const Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}