import 'dart:io';

class AddressToUppercase {   
   void disp() {     
      print("Enter the address : ");
      String address = stdin.readLineSync();
      print('\nAddress Details are :-\n\nName : ${address.toUpperCase()}\n');
   } 
}  
void main() {   
   AddressToUppercase c = new AddressToUppercase();   
   c.disp();    
}