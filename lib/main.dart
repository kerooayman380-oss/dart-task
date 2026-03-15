import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex = 0;

  final pages = [
    HomeScreen(),
    Center(child: Text("Search Page")),
    OrdersScreen(),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: pages[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.green,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Orders",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {

  Widget category(icon,text){
    return Container(
      margin: EdgeInsets.only(right:10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon,size:30),
          SizedBox(height:5),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("الرئيسية"),
        leading: Icon(Icons.menu),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [

            Container(
              padding: EdgeInsets.symmetric(horizontal:10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "حقل البحث",
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height:20),

            Text(
              "الفئات",
              style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
            ),

            SizedBox(height:10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  category(Icons.devices,"الكترونيات"),
                  category(Icons.checkroom,"ملابس"),
                  category(Icons.home,"منزل"),
                  category(Icons.menu_book,"كتب"),
                ],
              ),
            ),

            SizedBox(height:20),

            Text(
              "منتجات مميزة",
              style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
            ),

            SizedBox(height:10),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context,index){
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Icon(Icons.image,size:80),
                      ),
                      Text("منتج"),
                    ],
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("طلباتي"),
          bottom: TabBar(
            tabs: [
              Tab(text:"قيد التنفيذ"),
              Tab(text:"مكتملة"),
              Tab(text:"ملغاة"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ordersList(),
            ordersList(),
            ordersList(),
          ],
        ),
      ),
    );
  }

  Widget ordersList(){
    return ListView.builder(
      itemCount:5,
      itemBuilder:(context,index){
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.check_circle,color:Colors.green),
            title: Text("تفاصيل الطلب"),
            subtitle: Text("قيد التوصيل"),
          ),
        );
      },
    );
  }
}