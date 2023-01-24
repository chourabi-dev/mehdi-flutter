import 'package:flutter/material.dart';
import 'package:todo/pages/TodoAddPage.dart';

class TodoMainPage extends StatefulWidget {
  TodoMainPage({Key key}) : super(key: key);

  @override
  State<TodoMainPage> createState() => _TodoMainPageState();
}

class _TodoMainPageState extends State<TodoMainPage> {

  List _todos = [];



  addTodo(dynamic todo){
    List tmp = _todos;

    tmp.add(todo);

    setState(() {
      _todos = tmp;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (ctx)=> TodoAddPage( addFN: this.addTodo , ) ));
        },
      ),
      body: ListView.builder( itemCount: _todos.length, itemBuilder: (context, index) {
        return ListTile(
          
          title: Text( _todos[index]["title"] ),
          subtitle: Text( _todos[index]["content"]),
          isThreeLine: true,
          // leading: Container(height: 15, width: 15, color: Colors.red,),
          // trailing: Container(height: 15, width: 15, color: Colors.red,),
          
          /**
           * onTap: (){
            print("tap");

          },
          onLongPress: (){
print("long tap");
            
          },
           */

        );
      }, ) ,
    );
  }
}