import 'dart:ffi';

abstract class Role {

  void displayrole();
}

class Person implements Role {

  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address){
    name = name;
    age = age;
    address = address;
  }
  
  @override
  void displayrole() {
    
  }
}

class Student extends Person {
  int studentId;
  String grade;
  List<int> courseSccores;
  Student(super.name, super.age, super.address, this.studentId, this.grade, this.courseSccores){
    name = name;
    age = age;
    address = address;
    studentId = studentId;
    grade = grade;
    courseSccores = courseSccores;
  }


  @override
  void displayrole(){
    print('Role : Student');
  }

  void average(){
    double avg = 0;
    int sum = 0;

    for (int i = 0; i<courseSccores.length; i++){
      sum+=courseSccores[i];
    }

    avg = sum / courseSccores.length;
    print('Average Score : $avg');
  }


  void displayStudentInformation(){
    print('Name : $name');
    print('Age : $age');
    print('Address : $address');
  }
}


class Teacher extends Person{
  int teacherID;
  List<String> coursesTaught;

  Teacher(super.name, super.age, super.address, this.teacherID, this.coursesTaught){
    name = name;
    age = age;
    address = address;
    teacherID = teacherID;
    coursesTaught = coursesTaught;
  }

  @override
  void displayrole(){
    print('Role : Teacher');
  }

  displayCoursesTaught(){
    print('Courses Taught: ${coursesTaught.join(', ')}');
  }

  void displayTeacherInformation(){
    print('Name : $name');
    print('Age : $age');
    print('Address : $address');
  }
}


void main (){
  Student student = Student('John Doe', 20, '123 Main St', 111, 'A+', [89, 90, 85]);
  Teacher teacher = Teacher('Ms. Smith', 35, '456 Oak St', 999, ['Math', 'English', 'Bangla']);

  student.displayrole();
  student.displayStudentInformation();
  student.average();

  teacher.displayrole();
  teacher.displayTeacherInformation();
  teacher.displayCoursesTaught();  
}