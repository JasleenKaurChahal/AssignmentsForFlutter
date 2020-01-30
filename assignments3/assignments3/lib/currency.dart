import 'dart:io';

class ChangeCurrency {   
   void disp() {     
      print("Enter name of the country from China,America,England or India:");
      String name= stdin.readLineSync();
      var prices=[500,345,670,400];
      print("Amount of 4 items in Indiam ruppess is $prices");
       int amount=0;
      print("Enter the no of items you want to buy :");
      int num= int.parse(stdin.readLineSync());
      {
        if(num==4){
          amount=1912;
        }
        else{
          print("Enter $num  item's number that you want to buy in the form of 1,2,3 or 4:");
          for(int i=0;i<num;i++){
          int a= int.parse(stdin.readLineSync());
          amount+=prices[a-1];
          }
        }
      }
      if(name=='China'){    
        print('Chinese Yuan = ${0.097*amount}');
      }
      else if(name=='America' || name=='usa'){    
        print('American Dollar = ${0.014*amount}');
      }
       else if(name=='England'){    
        print('Euro = ${0.013*amount}');
      }
      else{
        print('Amount in Rupees = ${amount}');
      }
   } 
}  
void main() {   
   ChangeCurrency c = new ChangeCurrency();   
   c.disp();    
}