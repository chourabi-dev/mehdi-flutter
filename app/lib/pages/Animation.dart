import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {

  double _height = 0;
  double _opacity = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _opacity = 1 ;
          });
        },
      ),
      body: Column(
        children: [
          AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 500),
            width: MediaQuery.of(context).size.width,
            height: _height,
            color: Colors.blue,
          ),


          Container(
            child: FlatButton( onPressed: (){
              setState(() {
                _height = _height == 0 ? 100 : 0 ;
              });
            }, child: Text("Click for animation"), ),
          ),


          AnimatedOpacity(
            duration: Duration(milliseconds: 800),
            opacity: _opacity,
            child: Image.network("https://t4.ftcdn.net/jpg/05/21/18/03/360_F_521180377_2iAVJqBQSo3cgKaVp8vMBR8asrC61DoU.jpg"),
          )


        ],
      ),
    );
  }
}