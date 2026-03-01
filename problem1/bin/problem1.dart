import 'package:problem1/problem1.dart' as problem1;
import 'dart:io';

String login(String username, String password, bool isAccountActive) {
  if (username == 'student' && password == 'iti123' && isAccountActive) {
    return 'Login Successful';
  } else {
    return 'Access Denied';
  }
}

void main() {
  print('Enter username:');
  String? username = stdin.readLineSync();

  print('Enter password:');
  String? password = stdin.readLineSync();

  print('Is account active? (true/false):');
  String? activeInput = stdin.readLineSync();
  bool isAccountActive = activeInput?.toLowerCase() == 'true';

  String result = login(username ?? '', password ?? '', isAccountActive);
  print(result);
}