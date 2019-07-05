import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           FlatButton(
             child: Text(
               'Home',
               style: TextStyle(fontSize: 20.0,color: Colors.purple),
               ),
             onPressed: null,
           ),
           FlatButton(
             child: Text(
               'About',
               style: TextStyle(fontSize: 20.0,color: Colors.blue),
               ),
               onPressed:(){
                Navigator.of(context).push(
                  MaterialPageRoute(
                   builder: (BuildContext context)=> Page(title: 'About'),
                 ),
               );
             },
           ),
          ],
        ),
      ),
    );
  }
}

//一个新页面 这里是About
class Page extends StatelessWidget {
  final String title;
  Page({//构造函数
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}