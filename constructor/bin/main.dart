//import 'package:constructor/constructor.dart' as constructor;
/*

import '../lib/constructor.dart';

void main(List<String> arguments) {
  print('Types of constructors\n');
  // to call default constructor, but as only 1 constructor can be called,so we call other
  //Product obj=new Product();

  //Parametrised constructor
  Product obj=new Product(1,'Washing Machine');

  //To overcome problem of calling more than one constructor, named constructor is used for constructor overloading

  //Named nom-parametrised constructor
  obj=Product.getName();

  //Named Parametrised Constructor
  obj=Product.getId(12);

}

*/

class A{
  void display(){
    print('A\n');
  }
}

class B extends A{
 
  @override
  void display(){
    print('C\n');
  }
}

void main(){
  A parent=new A();
   B child=new B();
   
   parent.display();
   child.display();
   
  
}


