//对话框

import 'package:flutter/material.dart';
import 'dart:async';
enum Option{
  A,B,C
}
class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
 
 String _choices = 'Nothing';
 //打开对话框
  Future _openSimpleDialog() async{
    final option = await  showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
           title: Text('SimpleDialog'),
           children: <Widget>[
             SimpleDialogOption(
               child: Text('Option A'),
               onPressed: (){
                 Navigator.pop(context,Option.A);
               },
             ),
             SimpleDialogOption(
               child: Text('Option B'),
               onPressed: (){
                 Navigator.pop(context,Option.B);
               },
             ),
             SimpleDialogOption(
               child: Text('Option C'),
               onPressed: (){
                 Navigator.pop(context,Option.C);
               },
             ),
           ],
        );
      }
    );
    switch (option) {
      case Option.A:
        setState(() {
          _choices = 'A';
        });
        break;
        case Option.B:
        setState(() {
          _choices = 'B';
        });
        break;
        case Option.C:
        setState(() {
          _choices = 'C';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is: $_choices'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}