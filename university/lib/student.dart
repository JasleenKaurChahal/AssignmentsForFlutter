import 'package:university/person.dart';

class Student extends Person{
  String name = 'Jasleen';
  String id = '1611981182';
  double marks=97.7;
  void about_student(index){
    super.showAddressDetails();
    print("He is nice student");
  }

  void about_student_info(string){
    print("${string} is nice student");
  }
}