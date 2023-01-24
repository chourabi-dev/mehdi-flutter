import 'package:flutter/material.dart';

class SongDetails extends StatefulWidget {
  SongDetails({Key key}) : super(key: key);

  @override
  State<SongDetails> createState() => _SongDetailsState();
}

class _SongDetailsState extends State<SongDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,),
          Container(
            child: Hero(
              tag: "unique",
              child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/51/Michael_Jackson_-_Bad.png"),),
          )
        ],
      ),
    );
  }
}