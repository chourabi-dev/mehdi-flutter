import 'dart:convert';

import 'package:api/services/api.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  UsersPage({Key key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  
  List<dynamic> _users = [];

  Api _api = new Api();

  bool _isLaoding = true;
  bool _hasError = false;
  

  getDataFromServer(){
    setState(() {
      _isLaoding = true;
      _hasError = false;
    });


    // API CALL

    _api.getUsersList().then((res){ 
       setState(() {
        _isLaoding = false; 
      });


      // DATA ?
       
      List<dynamic> tmp = json.decode(res.body);

      setState(() {
        _users = tmp;
      });



    }).catchError((e){
      setState(() {
        _isLaoding = false;
        _hasError = true;
      });
    });




  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getDataFromServer();
  }

  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: _isLaoding == true ?
      Center( child: CircularProgressIndicator(),)
      :

      _hasError == false ?
      
      ListView.builder(itemCount: _users.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text(_users[index]["name"]),
          subtitle: Text(_users[index]["email"]),
          onTap: (){
            // NAVIGATOR 
            // push details( _users[index]["id"] )
          },
        );
      },)

      : Center(
        child: Container(
          child: Column(
            children: [
              Text('Something went wrong \n please try again'),
              FlatButton(onPressed: (){
                getDataFromServer();
              }, child: Text("Try again"),)
            ],
          ),
        ),
      )

    );
  }
}