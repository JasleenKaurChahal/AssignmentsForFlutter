import 'package:university/professor.dart';
import 'package:university/student.dart';
import 'package:university/university.dart';
import 'dart:io';

 class Course extends University implements Student,Professor{
  int hours=90;
  int cgpa=8;
  int credits=5;
  var professor=['Mr. Singh','Mr. Ranjit Grover','Ms. Kiran','Mr. Andrew Rogers','Ms. Lucy'];
  void printCourses(){
    print('\nCourses available are:  ED, Maths,Physics,ITPL, and Chemistry');
  }

  @override
   void about_student(index){
      print('\nHello! Please Enter Your details to check your eligibility as student: \n');    
      stdout.write('Your Name : ');
      name=stdin.readLineSync();
      stdout.write('Your PhoneNo : ');
      phoneNo=stdin.readLineSync();
      stdout.write('Your Email : ');
      email=stdin.readLineSync();
      print('Address details are: ');
      super.showAddressDetails();
      stdout.write('Your CGPA : ');
      int mark=int.parse(stdin.readLineSync());
      if(mark >=cgpa){
          print('You are eligible for the univerity!');
      }
      else{
        print('You are not eligible for the univerity!');
      }
   }

  @override
   void about_student_info(name){
     print("hi $name");
   }

  @override
  String id;

  @override
  double marks;

  @override
  int noOfPeople;

  @override
  int noOfProfessors;

  @override
  int noOfStudents;

  @override
  void getPersonDetails() {
    // TODO: implement getPersonDetails
  }

  @override
  void aboutProfessor(name, course) {
   print('${professor[name]} teaches the subject $course.This is 5 credits course.');
  }
}
