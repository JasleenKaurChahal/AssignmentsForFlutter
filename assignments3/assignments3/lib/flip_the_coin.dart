import 'dart:io';
import 'dart:math';

class TossCoin {   
   void disp() {     
      print("Enter 'yes' to find your Lucky Number: ");
      String response = stdin.readLineSync();
      if(response=='yes'){
      var random = Random.secure();
      var value = random.nextInt(2);
      print(value);
      if(value==0){
        print('Heads!');
      }
      else{
        print('Tails!');
      }
      }
      else{
         print('Coin not tossed!');
      }
   } 
}  
void main() {   
   TossCoin c = new TossCoin();   
   c.disp();    
}