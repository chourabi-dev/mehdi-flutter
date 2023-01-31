import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPage extends StatefulWidget {
  SharedPage({Key key}) : super(key: key);

  @override
  State<SharedPage> createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {






Future<void> _showAlert(BuildContext context,String token) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Token'),
          content:  Text(token),
          actions: <Widget>[
            FlatButton(
              
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
             
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            /*DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar()
                  ],
              ),
              ),
            )*/

            ListTile(
              onTap: ()async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setString("token", "123456789");

              },
              title: Text('Save token'),
            ),
            ListTile(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                String token = prefs.getString("token");

                print(token);
                Navigator.pop(context);


                _showAlert(context, token);

                
              },
              title: Text('Read token'),
            ),
            
          ],
        ),
      ),
    );
  }
}