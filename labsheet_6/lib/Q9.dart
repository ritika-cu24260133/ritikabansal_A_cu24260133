import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Q9(),
  ));
}

class Q9 extends StatefulWidget {
  const Q9({super.key});

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
  List<String> subjects = [
    'Accounting',
    'Finance',
    'Economics',
    'Management',
  ];

  @override
  void initState() {
    super.initState();
    saveSubjects();
  }

  Future<void> saveSubjects() async {
    final p = await SharedPreferences.getInstance();
    await p.setStringList('subjects', subjects);

    setState(() {
      subjects = p.getStringList('subjects') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Subjects')),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book),
            title: Text(subjects[index]),
          );
        },
      ),
    );
  }
}