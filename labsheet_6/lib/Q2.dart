class Student {
  String name;
  int roll;
  String course;

  Student(this.name, this.roll, this.course);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'roll': roll,
      'course': course,
    };
  }

  static Student fromMap(Map<String, dynamic> map) {
    return Student(
      map['name'] as String,
      map['roll'] as int,
      map['course'] as String,
    );
  }
}

void main() {
  Student student = Student('Rahul', 101, 'BCom');

  Map<String, dynamic> data = student.toMap();
  print(data);

  Student newStudent = Student.fromMap(data);

  print(newStudent.name);
  print(newStudent.roll);
  print(newStudent.course);
}