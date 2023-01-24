import 'package:flutter/material.dart';
import 'package:todo/pages/Demo.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("go to second page"),
          onPressed :(){

           //  Navigator.pushReplacement(context, newRoute)

            Navigator.push(context, 
            new MaterialPageRoute(builder: (context) {
              return DemoPage( pageTitle: "infos from home",);
            },)
            
            );
          }
        ),
      ),
    );
  }
}