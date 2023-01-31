import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class MemosPages extends StatefulWidget {
  MemosPages({Key key}) : super(key: key);

  @override
  State<MemosPages> createState() => _MemosPagesState();
}

class _MemosPagesState extends State<MemosPages> {

  List<Map> _memos = [];
  bool _isLoading = true;


  @override
  void initState() {
    super.initState();
    print("about to init the state !!!");

    _getMemos();

  }


  _insertMemo() async{
      var db = await openDatabase('memo.db');

      // create table !!!
      await db.execute('CREATE TABLE IF NOT EXISTS Memos (id INTEGER PRIMARY KEY , title TEXT, content TEXT)');

      // insert !!
    
     // Insert some records in a transaction
      await db.transaction((txn) async {
        int id1 = await txn.rawInsert(
          'INSERT INTO Memos(title, content) VALUES("some title", "some content")');
      
          print(id1);

          _getMemos();
      
      });

      

  }

  _getMemos() async {
    // connect to db

    var db = await openDatabase('memo.db');

    List<Map> list = await db.rawQuery('SELECT * FROM Memos');

    print(list);

    setState(() {
      _memos = list;
      _isLoading = false;
    });

  }




  
Future<void> _deleteMemo(BuildContext context,int primaryKey) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Stop'),
          content:  Text("Do you really want to delete this memo ?"),
          actions: <Widget>[
            FlatButton(
              
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
             
              child: const Text('Delete'),
              onPressed: () async {
                var db = await openDatabase('memo.db');

                await db.execute("DELETE FROM Memos WHERE id = ?", [primaryKey]);

                _getMemos();

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
      appBar: AppBar(actions: [IconButton(
        icon: Icon(Icons.plus_one),
        onPressed: (){
          _insertMemo();
        },
      )],),


      body: _isLoading == true ? Center( child: CircularProgressIndicator(), ) : ListView.builder( itemCount: _memos.length,itemBuilder: (context, index) {
        return(
          ListTile( 
            title: Text( _memos[index]['title'] ),
            subtitle: Text(_memos[index]['content']),

            trailing: IconButton(icon: Icon(Icons.delete,color: Colors.red,), onPressed: (){
              int key = _memos[index]['id'];

              _deleteMemo(context, key);

            }, )
            ,
             )
        );
      },),

    );
  }
}