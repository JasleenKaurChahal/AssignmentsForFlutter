import 'package:booking_management/booking.dart';
import 'dart:io';

class Bus extends Booking{
  void busBooking(){
    print('\nYou selected Bus as your mode of travel and it will cost around 2000 per person inclusive of meals.');
  }

  void confirmBusBooking(name,source,dest,from,to){
    print('Enter YES to confirm : ');
    var ans=stdin.readLineSync();
    if(ans.toUpperCase()=='YES'){
        print('\nBooking Succesfull: \n Name : $name\nSource: $source\nDestination : $dest\nFrom : $from\nTo : $to\nPrice : Rs. 2000');
    }else{
      print('\n Sorry You cancelled the booking!');
    }
  }
}