import 'dart:io';

class LargestNumber {   
   void disp() {    
      var list = new List(); 
      print("Enter a number : ");
      var number = stdin.readLineSync();  
      int len=number.length;
      for(int i=0;i<len;i++){
         list.add(number[i]);
      }
      list.sort();
      var reversedList = new List.from(list.reversed);
      print('Largest Number possible is : ${reversedList.join()}');
   } 
}  
void main() {   
   var c = new LargestNumber();   
   c.disp();    
}


