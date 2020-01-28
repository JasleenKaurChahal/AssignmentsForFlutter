import 'dart:io';
import 'dart:math';

class BirthdayChocolate {   
   void disp() {     
      print("Enter number of chocolates in a pcket : ");
      int choco = int.parse(stdin.readLineSync());
      if(choco==31){    
        print('Buy this packet!');
      }
      else{
        print('Do not Buy this packet!');
      }
   } 
}  
void main() {   
   BirthdayChocolate c = new BirthdayChocolate();   
   c.disp();    
}