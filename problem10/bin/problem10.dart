import 'package:problem10/problem10.dart' as problem10;
import 'dart:io';
void main(List<String> arguments) {
  bool driverAvalability = true;
  print("Enter the balance");
  int balance = int.parse(stdin.readLineSync()!);
  print("Enter the trip cost");
  int TripCost = int.parse(stdin.readLineSync()!);
  trip(driverAvalability, balance, TripCost);
}
void trip(bool driAva, int bal,int triCost){
  if(driAva && bal >= triCost){ print("Ride Confermed");}
  else {print("insufficient conditions");}
}