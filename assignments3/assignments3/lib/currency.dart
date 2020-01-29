import 'dart:io';

class ChangeCurrency {   
   void disp() {     
      print("Enter name of the country :");
      String name= stdin.readLineSync();
      int amount=1912;
      print("Enter the amount in your currency :");
      int extra= int.parse(stdin.readLineSync());
   
      if(name=='China'){    
        print('Chinese Yuan = ${(0.097*amount)+extra}');
      }
      else if(name=='America' || name=='usa'){    
        print('American Dollar = ${(0.014*amount)+extra}');
      }
       else if(name=='England'){    
        print('Euro = ${(0.013*amount)+extra}');
      }
      else{
        print('Amount in Rupees = ${amount+extra}');
      }
   } 
}  
void main() {   
   ChangeCurrency c = new ChangeCurrency();   
   c.disp();    
}