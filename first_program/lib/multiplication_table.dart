import 'dart:io';

class Table {   
   void disp() {     
      print("Enter a number : ");
      int t = int.parse(stdin.readLineSync()); 
      for(int i=1;i<=10;i++){
        print('$t x $i = ${t*i} \n');
      }
   } 
}  
void main() {   
   Table c = new Table();   
   c.disp();    
}


