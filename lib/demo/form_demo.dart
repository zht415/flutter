//表单
import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Theme(
         data: Theme.of(context).copyWith( //ThemeData
           primaryColor: Colors.cyan,
         ),
        //  child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
       ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){//监听文本框值的变化 
        debugPrint('input:$value');
      },
      onSubmitted: (value){
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title.',//默认词，类似于placeholder
        // border: InputBorder.none, //设置边框
        // border: OutlineInputBorder(),
        filled: true,//设置背影颜色
      ),
    );
  }
}

class ThemeDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor, //Theme.of(context).primaryColor,
    );
  }
}