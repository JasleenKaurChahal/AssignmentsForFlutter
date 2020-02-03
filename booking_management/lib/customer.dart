import 'dart:io';

import 'package:booking_management/booking.dart';

class Customer{
  String name,phoneNo,email,gender,address,country;
  int age,pincode;
  void getCustomerInfo(){
    print('Welcome !, Enter your details to continue:');
    stdout.write('\nEnter your name : ');
    name=stdin.readLineSync();
    stdout.write('\nEnter your age : ');
    age=int.parse(stdin.readLineSync());
    stdout.write('\nEnter your Email : ');
    email=stdin.readLineSync();
    stdout.write('\nEnter your Phone Number : ');
    phoneNo=stdin.readLineSync();
    stdout.write('\nEnter your gender (F or M) : ');
    gender=stdin.readLineSync();
    stdout.write('\nEnter your address : ');
    address=stdin.readLineSync();
    stdout.write('\nEnter your Postal Code : ');
    pincode=int.parse(stdin.readLineSync());
    stdout.write('\nEnter your Country : ');
    country=stdin.readLineSync();

    Booking book=new Booking();
    book.enterBookingDetails(name);

  }
}
