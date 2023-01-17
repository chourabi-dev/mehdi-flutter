import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _clicks = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$_clicks clicks"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
          setState(() {
            _clicks = _clicks +1;

          });
         
        },
      ),
    );
  }
}