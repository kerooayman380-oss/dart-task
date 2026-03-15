import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Color(0xff1380A5), 
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/login.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 575,
                width: 375,
                decoration: BoxDecoration(
                  color: Color(0xff1380A5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text(
                      'اهلا بك نحن سعداء بعودتك',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Changa',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'من فضلك قم بتسجيل الدخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Changa',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 45,
                      width: 313,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          maxLength: 11,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              'رقم الهاتف',
                              style: TextStyle(color: Colors.grey,),
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 45,
                      width: 313,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          obscureText: true,
                          maxLength: 8,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              'كلمة المرور',
                              style: TextStyle(color: Colors.grey,),
                            ),
                          ),
                        ),
                      )
                    ),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                          "هل نسيت كلمة المرور ؟",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70,),
                    Container(
                      height: 40,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('login');
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff1380A5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [                        
                        Container(
                          height: 22,
                          width: 132,
                          decoration: BoxDecoration(
                            color: Color(0xff1380A5),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('reg');
                            },
                            child: Text(
                              'انشاء حساب',
                              style: TextStyle(
                                fontFamily: 'Changa',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'ليس لديك حساب ؟',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                      ],                      
                    )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}