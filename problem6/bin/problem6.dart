import 'package:problem6/problem6.dart' as problem6;
import 'dart:io';
String checkBonus(int yearsExperience, int performanceRating) {
  if (yearsExperience >= 3 && performanceRating >= 4) {
    return 'Bonus Granted';
  } else {
    return 'No Bonus';
  }
}
void main() {
  print('Enter years of experience:');
  int yearsExperience = int.parse(stdin.readLineSync()!);
  print('Enter performance rating (1-5):');
  int performanceRating = int.parse(stdin.readLineSync()!);
  String result = checkBonus(yearsExperience, performanceRating);
  print(result);
}