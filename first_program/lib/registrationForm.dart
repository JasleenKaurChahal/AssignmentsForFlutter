import 'dart:io';

class RegistrationForm {   
   void disp() {     
      print("Enter your name : ");
      String name = stdin.readLineSync();
      print("Enter your age : ");
      int age = int.parse(stdin.readLineSync());
      print("Enter your email : ");
      String email = stdin.readLineSync();
      print("Enter your phone number : ");
      String number = stdin.readLineSync();
      print("\nYour Details are :-\n\nName : ${name.toUpperCase()}\nAge : $age\nEmail : $email\nPhoneNumber : $number\n");
   } 
}  
void main() {   
   RegistrationForm c = new RegistrationForm();   
   c.disp();    
}