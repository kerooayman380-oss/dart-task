import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
  int _selectedIndex = 0; 
  bool isChecked = false;
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
              left: 0,
              right: 0,
              child: Container(
                height: 575,
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
                    SizedBox(height: 30,),
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              'الاسم بالكامل',
                              style: TextStyle(color: Colors.grey,),
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 15,),
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              'البريد الالكتروني',
                              style: TextStyle(color: Colors.grey,),
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 15,),
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
                              'رقم الموبايل',
                              style: TextStyle(color: Colors.grey,),
                            )
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 15,),
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
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              TextSpan(
                                text: "أوافق على ",
                                style: TextStyle(color: Color(0xffFFBF9D)),
                              ),
                              TextSpan(
                                text: "الشروط و الأحكام",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Checkbox(                          
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
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
                            color: Color(0xff552883),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 22,
                          width: 148,
                          decoration: BoxDecoration(
                            color: Color(0xff1380A5),
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'لديك حساب ؟',
                          style: TextStyle(
                            color: Color(0xffFFBF9D),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ]
                )
              )
            )
          ],
        )
      )
    );
  }
}