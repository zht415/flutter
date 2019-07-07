//提示对话框
import 'package:flutter/material.dart';
import 'dart:async';
enum Action{
  Cancel,
  Sure
}
class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  String _choice = 'Nothing';
   
  Future _openAlertDialog() async{
   final action = await showDialog(
      context: context,
      barrierDismissible: false,//点击空白区域不关闭
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this？'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context,Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Sure'),
              onPressed: (){
                Navigator.pop(context,Action.Sure);
              },
            ),
          ],
        );
      }
    );
   switch (action) {
     case Action.Cancel:
       setState(() {
         _choice = 'Cancel';
       });
       break;
     case Action.Sure:
       setState(() {
         _choice = 'Sure';
       });
       break;
     default:
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is:$_choice'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}