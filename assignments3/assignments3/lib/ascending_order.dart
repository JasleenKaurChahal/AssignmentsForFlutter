import 'dart:io';

class ChangeCurrency {   
   void disp() {     
     var list = new List(10);
    print('Enter 10 numbers : ');
     for(int i=0;i<10;i++){
       list[i]=stdin.readLineSync();
     }
    list.sort();
      print('Numbers in Ascending Order : ${list}');
   }
}  
void main() {   
   ChangeCurrency c = new ChangeCurrency();   
   c.disp();    
}