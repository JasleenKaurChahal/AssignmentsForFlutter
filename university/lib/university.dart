import 'package:university/branch.dart';
import 'package:university/course.dart';

import './address.dart';
import 'dart:io';

class University extends Address{
  String name='Chitkara';
  String phoneNo='+91 9888884100';
  String email='chitkara@chitkara.edu.in';
  int noOfUniversities;
  int universityNo;
  var noOfStudentInEachUni = new List();
  String branchName;
  String courseName;
  var branches=['cse','ece','mechanical','civil'];
  var courses=['ed', 'maths','physics','itpl','chemistry'];
  University():super('Jp Nagar','Banglore','Karnataka',560076,'India');
  
  void getUniversityDetails(){
 
      stdout.write('\nEnter the total number of universities : ');
      noOfUniversities=int.parse(stdin.readLineSync());
      stdout.write('\nEnter the total number of students studying in each university : ');
      for(var i=0;i<noOfUniversities;i++){
        var val=int.parse(stdin.readLineSync());
        noOfStudentInEachUni.add(val); 
      }
      print('\nNo of students in $noOfUniversities are : $noOfStudentInEachUni');  

      stdout.write('\nSelect the university from 0 to ${noOfUniversities-1} to get its details: ');
      universityNo=int.parse(stdin.readLineSync());

      if(universityNo>=0 && universityNo<noOfUniversities){
      print('\nHello! Universitity details are: \n');    
      print('University Name : $name');
      print('University PhoneNo : $phoneNo');
      print('University Email : $email');
      print('University Address details are: ');
      super.showAddressDetails();

      Branch branch=new Branch();
      branch.printBranch();
      stdout.write('\nEnter the Branch name to get the No of Students in it : ');
      branchName=stdin.readLineSync();
      int index=branches.indexOf(branchName.toLowerCase());
      branch.about_student(index);
      
     

      Course course=new Course();
      course.printCourses();
      stdout.write('\nEnter the course name to get the Professor Detail: ');
      courseName=stdin.readLineSync();
      var i=courses.indexOf(courseName.toLowerCase());
      course.aboutProfessor(i,courseName);
      course.about_student(index);
      }
      else{
        print('\n Enter valid univeristy number!');
      }
  }
}