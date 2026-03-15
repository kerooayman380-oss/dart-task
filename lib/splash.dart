import 'package:flutter/material.dart';
import 'package:friday_task/register_or_sign_in.dart';
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset('images/splash.png'),
            Positioned(
              bottom: 75,
              left: 60,
              right: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE33C64),
                  borderRadius: BorderRadius.circular(12)
                ),
                height: 56,
                width: 327,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => RegisterOrSignIn()));
                  },                  
                  child: Text(
                    'دعنا نبدء',
                    style: TextStyle(
                      fontFamily: 'Tajawal Black',
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ) 
                ),
              ),
            )

          ]      
        ),
      )
    );
  }
}