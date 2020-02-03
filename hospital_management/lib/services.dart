import 'package:hospital_management/emergency.dart';
import 'package:hospital_management/ent.dart';
import 'package:hospital_management/generalPhysician.dart';
import 'package:hospital_management/hospital.dart';
import 'dart:io';


class Services extends Hospital{
  void getAllServices(){
    stdout.write('Select from services : Emergency, ENT or GeneralPhysician');
    var ans=stdin.readLineSync();
    if(ans.toLowerCase()=='emergency'){
      Emergency emer=new Emergency();
      emer.getEmergencyDetails();
    }
    else if(ans.toLowerCase()=='ent'){
        Ent ent=new Ent();
        ent.getEntDetails();
    }
    else if(ans.toLowerCase()=='generalphysician'){
        GeneralPhysician phy=new GeneralPhysician();
        phy.getPhyDetails();
    }
    else{
      print('Selected Service is not available!');
    }
  }
} 