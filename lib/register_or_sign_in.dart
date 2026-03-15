import 'package:flutter/material.dart';

class RegisterOrSignIn extends StatefulWidget {
  @override
  _RegisterOrSignInState createState() => _RegisterOrSignInState();
}

class _RegisterOrSignInState extends State<RegisterOrSignIn> {
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
            Image.asset(
              'images/login or register.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 422,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff1380A5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'اهلا بك في مؤسسة المسار',
                      style: TextStyle(
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'للفئات الخاصة',
                      style: TextStyle(
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
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
                    SizedBox(height: 30),
                    Container(
                      height: 40,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
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
                            color: Color(0xff1380A5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}