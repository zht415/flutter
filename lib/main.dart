import 'package:flutter/material.dart';
import './model/post.dart';
import './demo/listView_demo.dart';
import './demo/hello_demo.dart';

// void main(){
//   runApp(App());
// }
// 或使用以下方法
void main()=> runApp(App());

class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉右上角debug图标
      home: Home(),
      theme: ThemeData( //设置主题色
        primarySwatch: Colors.red
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( //顶部工具栏、标签栏
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton( //顶部左图标（类似于leftBarButton）
            icon: Icon(Icons.menu),//添加图标
            tooltip: 'Navigration',
            onPressed: ()=>debugPrint('Navigation button is Pressed.'),//添加点击行为
          ),
          title: Text('朴水'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: ()=>debugPrint('Search button is Pressed'),
            )
          ],
          elevation: 1.0,
        ),
        body: null,//ListViewDemo(),
      );
  }
}

