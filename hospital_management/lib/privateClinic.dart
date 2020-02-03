import 'package:hospital_management/doctor.dart';
import 'dart:io';

class PrivateClinic extends Doctor{
  var name='Bone Heeler';
  var address='Btm,2nd Stage';
  var fees=400;
  void getClinicDetails(){
    print('Private Clinic details are: \nName:$name\nAddress:$address\nFees:Rs. $fees\n');
    stdout.write('Enter Y to book an appointment');
    var ans=stdin.readLineSync();
    if(ans.toLowerCase()=='y'){
      print('\nYour appointment for tomorrow at 5 P.M is booked!');
    }else{
      print('Booking an appintment failed!');
    }
  }
}