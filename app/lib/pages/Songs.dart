import 'package:app/pages/SongDetails.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SongsPages extends StatefulWidget {
  SongsPages({Key key}) : super(key: key);

  @override
  State<SongsPages> createState() => _SongsPagesState();
}

class _SongsPagesState extends State<SongsPages> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: FloatingNavbar(
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
      
      body: ListView(
        children: [
          Container(
            height: 250,
            child: Image.asset("assets/bg.jpg"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (ctx){
                return SongDetails();
              }));
            },
            leading: Hero(
              tag: "unique",
              child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/51/Michael_Jackson_-_Bad.png"),),
            title: Text("MJ"),
            subtitle: Text("Beat it"),
          ),
         

        ],
      ),
    );
  }
}