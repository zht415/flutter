import 'package:flutter/material.dart';

// void main(){
//   runApp(App());
// }
// 或使用以下方法
void main()=> runApp(App());

class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('朴水'),
          elevation: 1.0,
        ),
        body: Hello(),
      ),
      theme: ThemeData( //设置主题色
        primarySwatch: Colors.red
      ),
    );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
     child: Text(
       'hello',
        textDirection:TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color:Colors.purple,
        )
     ),
   );
  }
}