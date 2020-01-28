import 'dart:io';

class ProductPrice {   
   void disp() {     
      print("Enter the name of the product: ");
      String name = stdin.readLineSync();
      print("Enter the price of the product ");
      int price = int.parse(stdin.readLineSync());
      print("Enter the percentage of discount ");
      int disc = int.parse(stdin.readLineSync());
      var finalPrice=price-(price*(disc/100));
      print('\nFinal Price of Product $name is : $finalPrice\n');
   } 
}  
void main() {   
   ProductPrice c = new ProductPrice();   
   c.disp();    
}