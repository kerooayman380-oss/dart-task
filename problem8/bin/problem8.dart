import 'package:problem8/problem8.dart' as problem8;
import 'dart:io';
void main(List<String> arguments) {
  print("Enter ur consumption");
  int electricityUsage = int.parse(stdin.readLineSync()!);
  category(electricityUsage);
}
void category(int eleUsa){
  if(eleUsa < 200){
    print("LOW");
  }
  else if(eleUsa > 200 && eleUsa < 500) {
    print("Medium Consumption");
  }
  else{
    print("High consumption");
  }
}