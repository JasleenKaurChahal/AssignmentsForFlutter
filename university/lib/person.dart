import './address.dart';
import 'dart:io';

class Person extends Address{
  String name;
  String phoneNo;
  String email;
  int noOfPeople;
  int noOfStudents;
  int noOfProfessors;

  Person():super('4th Cross','Banglore','Karnataka',560076,'India');
  
  void getPersonDetails(){
    stdout.write('\nEnter the total number of people : ');
      noOfPeople=int.parse(stdin.readLineSync());
      stdout.write('\nEnter the total number of students : ');
      noOfStudents=int.parse(stdin.readLineSync());
      noOfProfessors=noOfPeople-noOfStudents;
      print('\nNumber of Professors are : ${noOfProfessors}');  
  }
}