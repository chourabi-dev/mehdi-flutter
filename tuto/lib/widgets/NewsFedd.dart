import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  NewsFeed({Key key}) : super(key: key);

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {

  int _clicks = 0;
  bool _clicked = false;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Card( 
        
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAd7SeoDA2PxCcdbtBxBAHYw1xiP_CpXmRFyKSyyiC2Pr_A_vf34p816fwajWCCR9eHBo&usqp=CAU"),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("chourabi taher", style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("01/17/2023 5:45"),
                        
                        ],
                    ),
                  ),
                  
                ],
              ),
            )
            ,
            Container(
              margin: EdgeInsets.only(top:15),
              color: Colors.red,
              height: 250, 
              child: Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",fit: BoxFit.cover,),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: (){ 

                        setState(() {
                          _clicks = _clicked == false ? (_clicks + 1) : ( _clicks - 1 );
                          _clicked = ! _clicked;
                        });

                     },
                    child: Text("$_clicks ${ _clicked == false ? 'like' : 'dislike' } "),
                  ),
                  FlatButton(
                    onPressed: (){  },
                    child: Text("15 comments"),
                  ),
                  FlatButton(
                    onPressed: (){  },
                    child: Text("share"),
                  ),
                  
                ],
              ),
            )
          
          ],
        ),
        )
      ),
    );
  }
}