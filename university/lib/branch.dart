import 'package:university/professor.dart';
import 'package:university/student.dart';
import 'package:university/university.dart';

class Branch extends University implements Student,Professor{
  String branchDetails;
  String branchName;
  int branchId;
  String timeZone;
  String course='Engineering Drawing';
  @override
  String name = 'Jasleen';
   @override
  String id = '1611981182';
   @override
  double marks=97.7;
  @override
  int noOfPeople;
  @override
  int noOfProfessors;
  @override
  int noOfStudents;

  var stdCount=[200,400,350];

  void printBranch(){
    print('\nBranches are CSE,ECE,Mechanical and Civil');
  }

  @override
  void about_student(index) {
   print('Number of students in branch is ${stdCount[index]}');
  }

  @override
  void about_student_info(string) {
    // TODO: implement about_student_info
  }

  @override
  void getPersonDetails() {
    // TODO: implement getPersonDetails
  }

  @override
  void aboutProfessor(name,index){
     print('${name} is a profeesor of course ${course}.');
  }
}