// ignore_for_file: deprecated_member_use



import 'package:flutter/material.dart';
//import 'package:navi/bottomSheet/bottomSheet.dart';
import 'package:navi/bottomSheet/infoCard.dart';
import 'package:navi/myAccountScreen/Body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navi App",
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  
  int currentIndex=0;         //INDEX

  final screens=[
    homeScreen(),
    Center(child: Text("Event"),),
    Center(child: Text("saved"),),
    Center(child: Text("News"),),
    Body(),
  ];

  int navigationBarTap(int index, BuildContext ctx)
  {
    currentIndex=index;
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_){
        return Body();
      }
    ));
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("TEST"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,width: 20,),
            const TextField(
              decoration: InputDecoration(labelText: "Title",),
            ),
            infoCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index )=>setState(() => navigationBarTap(index,context)),
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.event),label:'Event'),
          BottomNavigationBarItem(icon:Icon(Icons.bookmark),label:'Saved'),
          BottomNavigationBarItem(icon:Icon(Icons.newspaper),label:'News'),
          BottomNavigationBarItem(icon:Icon(Icons.person),label:'Account'),
        ],
        selectedItemColor:Colors.redAccent,
        unselectedItemColor:Colors.black ,
      )
    );
  }
}
