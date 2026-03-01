import 'dart:io';
import 'package:problem4/problem4.dart' as problem4;
void main(List<String> arguments) {
  print("Enter ur salary");
  int salary = int.parse(stdin.readLineSync()!);
  print("Enter ur age");
  int age = int.parse(stdin.readLineSync()!);
  print("Do u have a loan ?(y/n)");
  String answer = stdin.readLineSync()!;
  bool found;
  answer == "y"? (found = true) : (found = false);
  print(loan(salary, age, found));
}
String loan(int sal, int age, bool hasExiLoa) {
  if((sal >= 5000 && (age >= 21 && age <= 60)) && hasExiLoa == false){
    return "Loan approved";
  }
  else {
    return "Loan Rejected";
  }
}