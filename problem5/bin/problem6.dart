import 'dart:io';
import 'package:problem6/problem6.dart' as problem6;
void main(List<String> arguments) {
  print("Enter ur order cost");
  int orderCost = int.parse(stdin.readLineSync()!);
  print("Enter the distance");
  int distance = int.parse(stdin.readLineSync()!);
  print("total Cost = ");
  print(cost(orderCost, distance));
}
int cost(int amo, int dis){
  int delFee = 0;
  if(dis > 300) {
    delFee = (dis*5);
  }
  return amo + delFee;
}