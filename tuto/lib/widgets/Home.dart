import 'package:flutter/material.dart';
import 'package:tuto/widgets/BlocProduct.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    




    return Scaffold(

      appBar: AppBar(
        title: Text('Home page'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Hi"),
      ),

      // COLUMN ROW

     /*
      height error
      body: Column(
        children: [

          BlocProduct(),
          BlocProduct(),
          BlocProduct(),
          


        ],
      )*/


      // IN CASE WE KNOW HOW MANY WIDGET WE ARE ABOUT TO USE
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocProduct( title: "demo", price: 5000, ),
            BlocProduct( title: "demo 2", price: 4500, ),
            
          ],
        ),
      ),


      // IN CASE WE DONT KNOW DATA LENGTH

      /*body: ListView.builder( itemCount: 5, itemBuilder: (context, index) {
        return (BlocProduct() );
      },)*/


    );
  }
}













          /*Container(
            height: 80,
            width: w / 2,
            color: Colors.orange,
          ),
          

          Row(
            children: [
               
              Container(
                height: 80,
                width: w / 2,
                color: Colors.blue,
              ),

              Container(
                height: 80,
                width: w / 2,
                color: Colors.black,
              ),
          
          
            ],
          )
          ,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),

              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),

              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
              



              
            ],
          )*/