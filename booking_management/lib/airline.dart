import 'package:booking_management/booking.dart';
import 'dart:io';

class Airline extends Booking{
  void airlineBooking(){
    print('\nYou selected Airline as your mode of travel and it will cost around 5000 per person inclusive of meals.');
  }

  void confirmAirlineBooking(name,source,dest,from,to){
    print('Enter YES to confirm : ');
    var ans=stdin.readLineSync();
    if(ans.toUpperCase()=='YES'){
        print('\nBooking Succesfull: \n Name : $name\nSource: $source\nDestination : $dest\nFrom : $from\nTo : $to\nPrice : Rs. 5000');
    }else{
      print('\n Sorry You cancelled the booking!');
    }
  }
}