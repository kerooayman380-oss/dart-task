import 'package:problem7/problem7.dart' as problem7;
import 'dart:io';
void main(List<String> arguments) {
  print("Enter ur access card number");
  int accessCardNumber = int.parse(stdin.readLineSync()!);
  print("Enter ur Known password");
  String KnownPassword = stdin.readLineSync()!;
  access(accessCardNumber, KnownPassword);
}
void access(int accCar, String knoPas){
  List<int>admAccCar = [051, 015, 202, 530, 354];
  List<String>admKnoPas = ["051", "015", "202", "530", "354"];
  bool acc = false;
  for(int i = 0; i < admAccCar.length; i++){
    if( accCar == admAccCar[i] && knoPas == admKnoPas[i]){
      acc = true;
      print("ACCess allowed");
    }
    else {
      acc = false;
      print("Access denied");
    }
  } 
}