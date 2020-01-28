import 'dart:io';
import '../lib/student_detail.dart';
import '../lib/university_detail.dart';
import '../lib/course_detail.dart';
import '../lib/branch_detail.dart';

class RegistrationForm {   
   void disp() {     
      // Course course = Course();
      // print('Course Deatils: \n${course.name} ${course.hours} ${course.credits}\n');
      // Branch_Name branch = Branch_Name();
      // print('Branch Deatils: \n${branch.branchDetails} ${branch.branchName} ${branch.branchId} ${branch.timeZone}\n');
      // University_Details university = University_Details();
      // print('University Deatils: \n${university.name} ${university.students_enrolled} ${university.no_of_subjects}\n');
      // Student_Detail student = Student_Detail();
      // print('Students Deatils: \n${student.name} ${student.id} ${student.marks} \n');
      // student.about_student();
      // student.about_student_info('Jasleen');
      Branch_Name branch = Branch_Name();
      print("Enter a time zone in format HH.MM : ");
      double t = double.parse(stdin.readLineSync()); 
      //show_branchInfo();
     //print('Branch Deatils: \n${branch.branchDetails} ${branch.branchName} ${branch.branchId} ${branch.timeZone}\n');
   } 
}  
void main() {   
   RegistrationForm c = new RegistrationForm();   
   c.disp();  
     
}