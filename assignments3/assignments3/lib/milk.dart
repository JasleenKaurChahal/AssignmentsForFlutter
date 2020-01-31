import 'dart:io';

class MilkClass1 {
  int milkPacketsAvailable = 150;
  int spoiledPackets = 20;
  int milkPacketsCount(availablePackets) {
    return availablePackets = milkPacketsAvailable - spoiledPackets;
  }
}
class MilkClass2 {
  int milkPacketsAvailable = 150;
  int spoiledPackets = 20;
  int milkPacketsCount(availablePackets) {
    return availablePackets = milkPacketsAvailable - spoiledPackets;
  }
}
class MilkClass3 {
  int milkPacketsAvailable = 150;
  int spoiledPackets = 10;
  int milkPacketsCount(availablePackets) {
    return availablePackets =  milkPacketsAvailable - spoiledPackets;
  }
}

void main() {
  print('Enter the no. of milk packets that you want to buy: ');
  int milkPacketsOrdered = int.parse(stdin.readLineSync());
  MilkClass1 milk1 = MilkClass1();
  int availableMilk1 = milk1.milkPacketsCount(milkPacketsOrdered);
  MilkClass2 milk2 = MilkClass2();
  int availableMilk2 = milk2.milkPacketsCount(availableMilk1);
  MilkClass3 milk3 = MilkClass3();
  int availableMilk3 = milk3.milkPacketsCount(availableMilk2);
  if (milkPacketsOrdered > availableMilk1 + availableMilk2 + availableMilk3) {
    print(
        'Packets Cannot be  Delivered as we can only deliver ${availableMilk1 + availableMilk2 + availableMilk3}');
  } else if (milkPacketsOrdered ==
      availableMilk1 + availableMilk2 + availableMilk3) {
    print(
        'Packets Cannot be  Delivered as we can only deliver ${availableMilk1 + availableMilk2 + availableMilk3 - 1}');
  } else {
    print('Thank You! ${milkPacketsOrdered} will be delivered');
  }
}
