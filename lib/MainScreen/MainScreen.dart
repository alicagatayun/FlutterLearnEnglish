import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learns/main.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   @override
  Widget build(BuildContext context) =>
   DefaultTabController(
   length: 3,
   child: Scaffold(
         appBar:AppBar(
          title: Text("Hello, Ali"),
           centerTitle: true,
           leading:IconButton(
             icon:Icon(Icons.menu),
             onPressed:(){},
           ),
           actions: [
             IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},)
           ],
           //backgroundColor: Colors.orangeAccent,
           flexibleSpace: Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [Colors.orangeAccent,Colors.orange],
                 begin: Alignment.bottomRight,

               )
             ),
           ),
           bottom: TabBar(
             indicatorColor: Colors.white,
             tabs:[
               Tab(icon: Icon(Icons.home),text:'Anasayfa',),
               Tab(icon: Icon(Icons.home),text:'Performansım',),
               Tab(icon: Icon(Icons.home),text:'Profilim',),
             ],
           ),
           elevation: 20,
         ),
         body:TabBarView(
           children: [
             buildMainPage('Anasayfa'),
             buildPage('Performansım'),
             buildPage('Profilim'),

           ],
         ),
       ),
   );
   Widget buildPage(String text) => Center(
      child: Text(
        text,style: TextStyle(fontSize: 28),
      )
   );
   Widget buildMainPage(String text) =>
       Scaffold(
          body: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
                children: <Widget>[
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.red,

                    ),
                    child: Text(" Quick Quiz"),
                  )
                ],
            ),
       );
}



