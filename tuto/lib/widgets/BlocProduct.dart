import 'package:flutter/material.dart';

class BlocProduct extends StatelessWidget {

  final String title;
  final double price;
  

  const BlocProduct({Key key, this.title, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    



    return Container(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [


          Container(


            margin: EdgeInsets.only( top: 25,left: 15,right: 15 ),


            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: w - 30,
                      color: Colors.grey.shade300,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:25),
                      child: Text(title, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.orange ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:25),
                                            child: Text("$price TND", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black ),),
                    ),
                    
                  ],
                ),
                
              ],
            ),
          )









        ],
      ),
      
    );
  }
}