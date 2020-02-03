import 'package:hospital_management/services.dart';
import 'dart:io';

class Ent extends Services{
  var name='Ms. Jenny';
  var address='block - 4, 1st floor';
  var fees=230;
  var time ='2 PM';
  void getEntDetails(){
    print('Ent details are: \nDoctor Name:$name\nPlace:$address\nFees:Rs. $fees\nTime:$time');
    stdout.write('Enter Y to confirm');
    var ans=stdin.readLineSync();
    if(ans.toLowerCase()=='y'){
      print('\nYour appointment is booked!');
    }else{
      print('Booking an appintment failed!');
    }
  }
}