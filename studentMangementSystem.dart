// ignore: file_names
abstract class Role{
  void displayRole();
}

class Person implements Role{
  String name,address;
  int age;
 

  Person(this.name,this.age,this.address);
  
  String get getName=> name;
  int get getAge=> age;
  String get getAddress=> address;
  
  @override
  void displayRole() {
    print('Role: Person');
  }

}

class Student extends Person{
  
  String studentID;
  double grade;
  List<double>courseScores;

  Student(this.studentID,this.grade,this.courseScores,String name, int age,String address):super(name,age,address);
  
  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore(){
    double total = 0;
    for(int i=0;i<courseScores.length;i++){
      total+=courseScores[i];

  }
  return total/courseScores.length;
 }
  
}

class Teacher extends Person{
  String teacherID;
  List<String>courseTaught;

  Teacher(this.teacherID,this.courseTaught,String name, int age,String address):super(name,age,address);

  @override
  void displayRole() {
    print('Role: Teacher');
  }
  
  void displayCourse(){
    print('Courses Taught:');
    for(int i=0;i<courseTaught.length;i++){
      print('- ${courseTaught[i]}');
    }
  }
}
class StudentManagementSystem {
  void main() {
    Student student = Student( 'S2023',4.0, [90, 85, 82] ,'John Doe' ,14, '123 Main St');
    Teacher teacher = Teacher( 'T2024',['Math', 'English', 'Bangla'],'Mrs. Smith', 35, '456 Oak St' );

    // Display Student Information
    print('Student Information:');
    student.displayRole();
    print('Name: ${student.name}');
    print('Age: ${student.age}');
    print('Address: ${student.address}');
    print('Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}\n');

    //Display teacher Information
    print('Teacher Information:');
    teacher.displayRole();
    print('Name: ${teacher.name}');
    print('Age: ${teacher.age}');
    print('Address: ${teacher.address}');
    teacher.displayCourse();
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  system.main();
}

