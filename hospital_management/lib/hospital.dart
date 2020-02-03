import 'package:hospital_management/doctor.dart';
import 'package:hospital_management/patient.dart';
import 'dart:io';

import 'package:hospital_management/services.dart';

class Hospital extends Patient{
  String name='Leela Hospital';
  String add='Jp nagar,Bengaluru';
  String option;
  void getHospitaldetails(){
    print('\nHospital Details are :\n\nName : $name\nAddress : $add');
    stdout.write('\nEnter your selection for Services or Doctor : ');
    option=stdin.readLineSync();
    if(option.toLowerCase()=='services'){
      Services ser=new Services();
      ser.getAllServices();
    }
    else{
      Doctor doc=new Doctor();
      doc.getDoctorDetails();
    }
  }
}
