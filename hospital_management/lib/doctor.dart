import 'package:hospital_management/hospital.dart';
import 'dart:io';

import 'package:hospital_management/privateClinic.dart';

class Doctor extends Hospital{
  String name='Mr. Raghav Ahuja';
  String branch='Orthopadeic';
  void getDoctorDetails(){
     print('$name is an $branch with 7 years of experience!');
     stdout.write('\nDo you want to take appointment or meet in his private clinic: enter a or p :');
      var ans=stdin.readLineSync();
      if(ans.toLowerCase()=='p'){
        PrivateClinic clinic=new PrivateClinic();
        clinic.getClinicDetails();
      }
     else if(ans.toLowerCase()=='a'){
        print('\nYour appointment for tomorrow at 11 A.M is booked!');
      }
      else{
        print('Booking an appintment failed');
      }
  }
}