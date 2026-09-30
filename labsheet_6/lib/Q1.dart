void main() {
  Map<String, dynamic> student = {
    'Name': 'Ritika',
    'Roll Number': 101,
    'Course': 'BCA',
  };

  student.forEach((key, value) {
    print('$key: $value');
  });
}