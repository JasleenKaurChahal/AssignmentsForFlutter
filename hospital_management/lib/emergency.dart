import 'package:hospital_management/services.dart';
import 'dart:io';

class Emergency extends Services{
  var name='Ms. Reema';
  var address='block -5, 2nd floor';
  var fees=20;
  var time ='3 PM';
  void getEmergencyDetails(){
    print('Emergency details are: \nDoctor Name:$name\nPlace:$address\nFees:Rs. $fees\nTime:$time');
    stdout.write('Enter Y to confirm');
    var ans=stdin.readLineSync();
    if(ans.toLowerCase()=='y'){
      print('\nYour appointment is booked!');
    }else{
      print('Booking an appintment failed!');
    }
  }
}