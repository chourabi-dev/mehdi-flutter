import 'package:app/pages/tabs/Tab1.dart';
import 'package:app/pages/tabs/Tab2.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  int _currentIndex = 0;

  List<Widget> _tabs = [
    TabOne(),
    TabTwo()
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _tabs.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.usb),
            title: Text("Home")
          ),
          
        ],
      ),
    );
  }
}