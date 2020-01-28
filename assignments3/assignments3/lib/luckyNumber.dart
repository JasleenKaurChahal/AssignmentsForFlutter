import 'dart:io';
import 'dart:math';

class LuckyNumber {   
   void disp() {     
      print("Enter 'yes' to find your Lucky Number: ");
      String response = stdin.readLineSync();
      if(response=='yes'){
        var random = Random.secure();
        var value = random.nextInt(10);
        print('Your Lucky Number is $value and you will have a lovely day today!');
      }
      else{
        print('Sorry! Your response is not a yes!');
      }
   } 
}  
void main() {   
   LuckyNumber c = new LuckyNumber();   
   c.disp();    
}