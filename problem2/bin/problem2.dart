import 'package:problem2/problem2.dart' as problem2;
import 'dart:io';
void main(List<String> arguments) {
  print("Enter the product price:");
  double productPrice = double.parse(stdin.readLineSync()!);
  print("Enter your name:");
  String name = stdin.readLineSync()!;
  print("Do you have a coupon? (yes/no):");
  String answer = stdin.readLineSync()!;
  bool hasCoupon = (answer.toLowerCase() == "yes");
  double finalFee = fee(productPrice, false, hasCoupon, name);
  print("The fee is: $finalFee");
}
double fee(double productPrice, bool isPremium, bool hasCoupon, String name) {
  List<String> premiumNames = ["Kirolos", "Ali", "Adel", "Wael", "Bassem"];  
  if (premiumNames.contains(name)) {
    isPremium = true;
  }
  if (isPremium || hasCoupon) {
    double discount = productPrice * 0.15;
    productPrice -= discount;
  }
  return productPrice;
}