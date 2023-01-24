

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold( 

        appBar: AppBar(
          title: Text("Bonjour"),
          actions: [
            IconButton(icon: Icon(Icons.ac_unit), onPressed: (){},),
            IconButton(icon: Icon(Icons.ac_unit), onPressed: (){},),
            IconButton(icon: Icon(Icons.ac_unit), onPressed: (){},),
            


          ],

          bottom: TabBar(
            tabs: [
              Tab(
                text: "bonjour",

              ),
              Tab(
                icon: Icon(Icons.radio),
              ),
              Tab(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                ),
              ),
              
            ]
          ,),
        ),
      
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.radio_button_checked),
            ),
            Center(
              child: Icon(Icons.face),
            ),
            Center(
              child: Icon(Icons.cached),
            ),
            
          ],
        ),

      ),
    );
  }
}
