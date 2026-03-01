import 'package:problem3/problem3.dart' as problem3;
import 'dart:io';
void main(List<String> arguments) {
  print("Enter ur exam score : ");
  int examScore = int.parse(stdin.readLineSync()!);
  print("Enter ur attendece percentage : ");
  int attendancePercentage = int.parse(stdin.readLineSync()!);
  student(examScore, attendancePercentage);
}
void student(int exaSco, int attPer){
  (exaSco >= 50 && attPer >= 75)? print("Passed")  :  print("Falid") ; 
}