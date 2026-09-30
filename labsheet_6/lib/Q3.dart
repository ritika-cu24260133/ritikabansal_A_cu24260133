import 'dart:convert';

void main() {
  Map<String, dynamic> student = {
    'name': 'Rahul',
    'roll': 101,
    'course': 'BCom',
  };

  String jsonData = jsonEncode(student);
  print(jsonData);

  Map result = jsonDecode(jsonData);
  print(result);
}