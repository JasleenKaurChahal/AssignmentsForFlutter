import 'dart:io';

class Shopping_Mall {   
   void disp() {  
     var best_row=1;
     var queue_quantity = new List(3); 
      queue_quantity[0] = 20; 
      queue_quantity[1] = 13; 
      queue_quantity[2] = 11; 
      var queue_count = new List(3); 
      print("Enter the current count in the 3 rows :");
      for(var i=0;i<3;i++){
       queue_count[i]=int.parse(stdin.readLineSync());    
      }
      var least_position=queue_count[0];
       for(var i=0;i<3;i++){
        var position=queue_count[i]+1;
        if(position<=least_position){
          least_position=position+1;
          best_row=i+1;
        }
       }
        print('\nRow with least number of people is ${best_row}'); 
        print('Position that a person can take in row is ${least_position}');        
   } 
}  
void main() {   
   Shopping_Mall c = new Shopping_Mall();   
   c.disp();    
}