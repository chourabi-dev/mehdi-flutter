import 'package:app/pages/Animation.dart';
import 'package:app/pages/HomePage.dart';
import 'package:app/pages/SecondPage.dart';
import 'package:app/pages/Songs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SongsPages(
        
      )
    );
  }
}

