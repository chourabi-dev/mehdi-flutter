import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  final dynamic addFN;
  
  TodoAddPage({Key key, this.addFN}) : super(key: key);

  @override
  State<TodoAddPage> createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {

  TextEditingController _titleController = new TextEditingController();
  TextEditingController _contentController = new TextEditingController();
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add todo"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Todo title",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              controller: _contentController,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Todo content",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              onPressed: (){

                String title = _titleController.text;
                String content= _contentController.text;
                
                // ?
                dynamic todo = { "title":title ,"content":content  };
                widget.addFN(todo);

                // auto back to privious page !!
                Navigator.pop(context);

              },
              child: Text("Create todo"),
            )
          ),
          
          
        ],
      ),
    );
  }
}