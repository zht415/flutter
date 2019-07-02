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
        primarySwatch: Colors.pink,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//选中时高亮颜色
        splashColor: Colors.white70 
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  DefaultTabController(
      length: 3,
      child: Scaffold( //顶部工具栏、标签栏
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
          bottom: TabBar(//设置tabBar
            unselectedLabelColor: Colors.black38,//未选中是颜色
            indicatorColor: Colors.blue,//选择时底部的线
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[ //
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist,size:128.0,color:Colors.black12),
            Icon(Icons.change_history,size:128.0,color:Colors.black12),
            Icon(Icons.directions_bike,size:128.0,color:Colors.black12),
          ],
        ),//ListViewDemo(),
        drawer: Container(//左边抽屉
          color: Colors.white,
          padding:EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//主轴对齐方式
            children: <Widget>[
              Text('This is drawer')
            ],
          ),
        ) 
        // endDrawer: Text('This is right drawer'),//右边抽屉
      ),
    );
  }
}

