import 'package:flutter/material.dart';

class ConnectedUserItem extends StatelessWidget{
  final bool connected;
  
  const ConnectedUserItem({Key key, this.connected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5,left: 5, right: 25),
            height: 80,
            width: 80,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                CircleAvatar(
                  radius: 80,
                ),

                Positioned(
                   right: -15,
                  top: 0,
                  child: Container(height: 30,width: 30, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: connected ? Colors.green.shade300 : Colors.grey.shade300
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("chourabi taher",style: TextStyle(fontSize: 30),),
                Text("hello world"),
                
                ],
            ),
          )
        ],
      ),
    );
  }
}