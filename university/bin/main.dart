import 'dart:io';
//import 'package:university/address.dart';
import 'package:university/person.dart';
import 'package:university/university.dart';

// import '../lib/student.dart';
// import '../lib/university.dart';
// import '../lib/course.dart';
// import '../lib/branch.dart';
// import '../lib/address.dart';

// class UniversityManagement {   

// // int university_id;
// // UniversityManagement()//calling default construction
// // UniversityManagement(int id)//calling parametrised  constructor
// // {
// //   university_id=id;
// // }
// // //another way to assign is
// // UniversityManagement(this.id)//calling parametrised  constructor
// // {
  
// // }



//    void disp() {     
//       // Course course = Course();
//       // print('Course Deatils: \n${course.name} ${course.hours} ${course.credits}\n');
//       // Branch_Name branch = Branch_Name();
//       // print('Branch Deatils: \n${branch.branchDetails} ${branch.branchName} ${branch.branchId} ${branch.timeZone}\n');
//       // University_Details university = University_Details();
//       // print('University Deatils: \n${university.name} ${university.students_enrolled} ${university.no_of_subjects}\n');
//       // Student_Detail student = Student_Detail();
//       // print('Students Deatils: \n${student.name} ${student.id} ${student.marks} \n');
//       // student.about_student();
//       // student.about_student_info('Jasleen');
//       // Branch_Name branch = Branch_Name();
//       // print("Enter a time zone in format HH.MM : ");
//       // double t = double.parse(stdin.readLineSync()); 
//       //show_branchInfo();
//      //print('Branch Deatils: \n${branch.branchDetails} ${branch.branchName} ${branch.branchId} ${branch.timeZone}\n');

//     // var add=new Address(street, city, state, postalCode, country);
//     //  stdout.write('Enter the no of Persons : ');
//     //   var studentNo = stdin.readLineSync();
//     //   print(studentNo);
//    } 
// }  
void main() {   
  // print('Hello!\n Please enter your details');
  // stdout.write('Name : ');
  // String name = stdin.readLineSync();
   Person add = new Person();
   add.getPersonDetails();
   University uni = new University();
   uni.getUniversityDetails();
  //  UniversityManagement c = new UniversityManagement();   
  //  add.disp();  
     
}