import 'package:booking_management/booking.dart';
import 'dart:io';

class Railway extends Booking{
  void railwayBooking(){
    print('\nYou selected Railway as your mode of travel and it will cost around 1200 per person inclusive of meals.');
  }

  void confirmRailwayBooking(name,source,dest,from,to){
    print('Enter YES to confirm : ');
    var ans=stdin.readLineSync();
    if(ans.toUpperCase()=='YES'){
        print('\nBooking Succesfull: \n Name : $name\nSource: $source\nDestination : $dest\nFrom : $from\nTo : $to\nPrice : Rs. 1200');
    }else{
      print('\n Sorry You cancelled the booking!');
    }
  }
}