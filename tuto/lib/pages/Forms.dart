import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  FormsPage({Key key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {

  TextEditingController _controller = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  String _errorMessage = null;
  String _errorMessagePassword = null;









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(15),
              child: TextField(

                controller: _controller,

                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "Username",
                  hintText: "your username please",
                  errorText: _errorMessage,
                  border: OutlineInputBorder(),
                  
                ),
              ),
            ),
          ),



          Container(
              padding: EdgeInsets.all(15),
              child: TextField(

                controller: _passController,

                decoration: InputDecoration(
                  icon: Icon(Icons.security),
                  labelText: "Password",
                  hintText: "your password please",
                  errorText: _errorMessage,
                  border: OutlineInputBorder(),
                  
                ),
              ),
            ),



            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                color: Colors.orange,
                onPressed: (){
                 if (_controller.text == "") {
                   setState(() {
                     _errorMessage = "this feild is required";
                   });
                 } else {
                    setState(() {
                     _errorMessage = null;
                   });


                   print(_controller.text); 
                  _controller.text="";
                 }



                 if (_passController.text == "") {
                   setState(() {
                     _errorMessagePassword = "this feild is required";
                   });
                 } else {
                    setState(() {
                     _errorMessagePassword = null;
                   });


                  
                 }
                },

                child: Text("Connect"),
              )
            ),

        ],
      ),
    );
  }
}