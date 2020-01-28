import 'dart:io';

class Taxifair {   
   void disp() {     
      print("Enter the distance in km ");
      int distance = int.parse(stdin.readLineSync());
      int onlineTaxiCost,classicTaxiCost;
      if(distance > 20){
        distance=distance-20;
         onlineTaxiCost=40*20+distance*10;
         classicTaxiCost=30*20+distance*15;
      }else{
        onlineTaxiCost=40*distance;
        classicTaxiCost=30*distance;
      }
      print('Online taxi cost is : $onlineTaxiCost \nClassic taxi cost is : $classicTaxiCost');
      if(onlineTaxiCost < classicTaxiCost){
        print("Take Online Taxi !\n");
      }
      else if(onlineTaxiCost > classicTaxiCost){
         print("Take Classic Taxi !\n");
      }
      else{
        print("Take any taxi, as fair is same!\n");
      }
   }
}  
void main() {   
   Taxifair c = new Taxifair();   
   c.disp();    
}