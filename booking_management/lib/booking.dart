import 'package:booking_management/airline.dart';
import 'package:booking_management/bus.dart';
import 'package:booking_management/customer.dart';
import 'dart:io';

import 'package:booking_management/railway.dart';

class Booking extends Customer{
  String initial,destination,mode,startDate,endDate;
  void enterBookingDetails(name){
    print('\nEnter your booking Details:');
    stdout.write('\nEnter your Start Location : ');
    initial=stdin.readLineSync();
    stdout.write('\nEnter Date of travel in dd/mm/yyyy form : ');
    startDate=stdin.readLineSync();
    stdout.write('\nEnter your Destination Location : ');
    destination=stdin.readLineSync();
    stdout.write('\nEnter return Date of travel in dd/mm/yyyy form : ');
    endDate=stdin.readLineSync();
    stdout.write('\nEnter name Mode of travel from Bus,Railway or Airline: ');
    mode=stdin.readLineSync();
    if(mode.toLowerCase()=='bus'){
      Bus bus=new Bus();
      bus.busBooking();
      bus.confirmBusBooking(name,initial,destination,startDate,endDate);
    }else if(mode.toLowerCase()=='bus'){
      Railway rail=new Railway();
      rail.railwayBooking();
      rail.confirmRailwayBooking(name,initial,destination,startDate,endDate);
    }else{
      Airline air=new Airline();
      air.airlineBooking();
      air.confirmAirlineBooking(name,initial,destination,startDate,endDate);
    }
  }
}