import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List todos = [];
  String input = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TO DO LIST"),
          backgroundColor: Color(0XFFFF6E3F),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(
                context: context, builder: (BuildContext context){
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                title: Text("Add Todolist"),
                content: TextField(
                  onChanged: (String value) {
                    input = value;
                  },
                ),
                actions: [
                  FlatButton(onPressed: (){
                    setState(() {
                      todos.add(input);
                    });
                    Navigator.of(context).pop();
                  }, child: Text("Add"))
                ],
              );
            });
          },
          child: Icon(Icons.add, color: Colors.white,),
        ),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index){
              return Dismissible(key: Key(todos[index]), child: Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  title: Text(todos[index]),
                  trailing: IconButton(
                    onPressed: (){
                      setState(() {
                        todos.removeAt(index);
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),);
            })
    );
  }
}
