import 'package:flutter/material.dart';
import 'package:friday_task/login.dart';
import 'package:friday_task/reg.dart';
import 'package:friday_task/register_or_sign_in.dart';
import 'package:friday_task/splash.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'splash' : (context) => Splash(),
        'reg or sign in' : (context) => RegisterOrSignIn(),
        'login' : (context) => Login(),
        'reg' : (context) => Reg()
      },
      home: Scaffold(
        body: Splash(),
      ),
    );
  }  
}