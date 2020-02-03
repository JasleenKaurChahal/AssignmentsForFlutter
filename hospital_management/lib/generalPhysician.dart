import 'package:hospital_management/services.dart';
import 'dart:io';

class GeneralPhysician extends Services{
  var name='Mr. Vicky';
  var address='block - 2, 1st floor';
  var fees=150;
  var time ='12:30 PM';
  void getPhyDetails(){
    print('General Physician details are: \nDoctor Name:$name\nPlace:$address\nFees:Rs. $fees\nTime:$time');
    stdout.write('Enter Y to confirm');
    var ans=stdin.readLineSync();
    if(ans.toLowerCase()=='y'){
      print('\nYour appointment is booked!');
    }else{
      print('Booking an appintment failed!');
    }
  }
} 