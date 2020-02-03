import 'dart:io';

import 'package:hospital_management/hospital.dart';

class Patient{
  String name,phoneNo,email,gender,address;
  int age;

  void getDetails(){
    print('Enter your personal details:');
    stdout.write('\nEnter your name : ');
    name=stdin.readLineSync();
    stdout.write('\nEnter your age : ');
    age=int.parse(stdin.readLineSync());
    stdout.write('\nEnter your Email : ');
    email=stdin.readLineSync();
    stdout.write('\nEnter your Phone Number : ');
    phoneNo=stdin.readLineSync();
    stdout.write('\nEnter your gender (F or M) : ');
    gender=stdin.readLineSync();
    stdout.write('\nEnter your address : ');
    address=stdin.readLineSync();

    Hospital hosp=new Hospital();
    hosp.getHospitaldetails();
  
  }
}