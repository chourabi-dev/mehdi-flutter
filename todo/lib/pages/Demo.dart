import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  final String pageTitle;
  
  DemoPage({Key key, this.pageTitle}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 80,
              child: Row(
                children: [

                  Container(
                    child: IconButton(
                      onPressed: (){
                        // CODE => BACK TO PREVIOUS CONTEXT !
                        
                         // Navigator.pop(context);

                         if (Navigator.canPop(context)) {
                           Navigator.pop(context);
                         }

                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Container(
                    child: Text( widget.pageTitle ),
                  )

                ],
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}