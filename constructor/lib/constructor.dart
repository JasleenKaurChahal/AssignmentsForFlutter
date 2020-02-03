import 'dart:io';

class Product{
  int product_id;
  String product_name;
  //to call this use Product obj=new Product(); in main
 // Product();//default non-parametrised constructor 

  //Parametrised Constructor to call it use Product obj=new Product(1,'Washing Machine');
  Product(int id, String name){
    product_id=id;
    product_name=name;
    print('Parametrised Constructor : ProductId: $product_id');
  }

  //if we use this then w4e do no need to initialise using product_id=id
  ///THIS CONCEPT
  // Product(this.product_id, String name){
  //   print('Parametrised Constructor : ProductId: $product_id');
  // }
   
   //Named constructor , call by obj=ClassName.getName();
  //  Product.getName();
   Product.getName(){
     stdout.write('Please enter Name ');
     String n= stdin.readLineSync();
     print("Named constructor name is : $n");
   }

   //Parametrised Name Constructor, call by obj=ClassName.getId(12);
   Product.getId(int id){
     print('Id of product is $id');
   }



}


