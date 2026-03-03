import 'dart:io';
import 'dart:math';

import 'package:task2/task2.dart' as task2;

void main(List<String> arguments) {
  print("==============function 1================"); // from 1 to num 
  Task2 obj = new Task2();
  obj.Function1(5);
  print("==============function 2================"); // even numbers
  obj.Function2(10);
  print("==============function 3================"); // numbers category
  obj.Function3(15);
  print("==============function 4================"); // multuplication tabel
  obj.Function4(20);
  print("==============function 5================"); // is prime
  obj.Function5(25);
  print("==============function 6================"); // factorial
  obj.Function6(30);
  print("==============function 7================"); // primes from 1 to num
  obj.Function7(35);
  print("==============function 8================"); // divisors
  obj.Function8(40);
  print("==============function 9================"); // GCD
  obj.Function9(45, 50);
  print("==============function 10================"); // هرم
  obj.Function10(45);

}  
class Task2 {
  Function1(int num) {
    for (int i = 1; i <= num; i++) {
      print(i);
    }
  }

  Function2(int num) {
    for (int i = 0; i <= num; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }

  Function3(int num) {
    if (num % 2 != 0) {
      print("number $num is odd");
      if (num < 0) {
        print("and negative");
      } else {
        print("And positive");
      }
    } else {
      print("Number $num is even");
    }
  }

  Function4(int num) {
    for (int i = 1; i <= num; i++) {
      print("$i * $num = ${i * num}");
    }
  }

  Function5(double num) {
    bool found = false;
    double root = sqrt(num);
    if (root == root.toInt()) {
      found = true;
    }
    if (found) {
      print("YES");
    } else {
      print("NO");
    }
  }

  Function6(int num) {
    int fact = 1;
    for (int i = num; i >= 1; i--) {
      fact *= i;
    }
    print(fact);
  }

  Function7(int num) {
    for (int i = 2; i <= num; i++) {
      bool isPrime = true;
      for (int j = 2; j <= sqrt(i); j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        print(i);
      }
    }
  }
  Function8(int num){
    for(int i = 1; i <= num; i++){
      if(num % i == 0){
        print(i);
      }
    }
  }
  Function9(int num1, num2){
    int c = max(num1,num2);
    int? e;
    for(int i = 1; i <= c; i++)
    {
     if (num1 % i == 0 && num2 % i == 0)
      {
        e = i;
      }
    }
    print(e);
  }
  Function10(int num) {
    for (int i = 1; i <= num; i++) {
      for (int j = 1; j <= i; j++) {
        stdout.write("* "); 
      }
      print(""); 
    }
  }
}