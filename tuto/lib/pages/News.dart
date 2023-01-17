import 'package:flutter/material.dart';
import 'package:tuto/widgets/NewsFedd.dart'; 

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  List _data = new List();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          List tmp = _data;
          tmp.add("bonjour");

          setState(() {
            _data = tmp;
          });


        },
      ),
      body: ListView.builder( 
        itemCount: _data.length, 
        itemBuilder: (context, index) {
        return (NewsFeed());
      }, ),
    );
  }
}