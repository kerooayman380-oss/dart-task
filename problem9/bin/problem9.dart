import 'package:problem9/problem9.dart' as problem9;
import 'dart:io';
void main(List<String> arguments) {
  print("Enter ur completed lessons");
  int completedLessons = int.parse(stdin.readLineSync()!);
  print("Enter ur quiz score");
  int quizScore = int.parse(stdin.readLineSync()!);
  levels(completedLessons, quizScore);
}
void levels(int comLes, int quiSco){
  if(comLes >= 10 && quiSco >= 70){
    print("next level is not locked");
  }
  else {
    print("complete requeirments");
  }
}