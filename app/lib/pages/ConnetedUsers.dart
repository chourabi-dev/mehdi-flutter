import 'package:app/widgets/UserItem.dart';
import 'package:flutter/material.dart';

class ConnectedUsers extends StatefulWidget {
  ConnectedUsers({Key key}) : super(key: key);

  @override
  State<ConnectedUsers> createState() => _ConnectedUsersState();
}

class _ConnectedUsersState extends State<ConnectedUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ConnectedUserItem( connected: true, ),
          ConnectedUserItem( connected: false, ),
          ConnectedUserItem( connected: false, ),
          ConnectedUserItem( connected: false, ),
          ConnectedUserItem( connected: false, ),
          
          
          
          
          
          

        ],
      ),

    );
  }
}