// Shift  +  Alt  + F     实现代码的对齐；
// flutter upgrade 升级flutterSDK 
// flutter clean ：会删除掉'build/'里的东西
import 'package:flutter/material.dart';
import './model/post.dart';
import './demo/listView_demo.dart';
import './demo/hello_demo.dart';
import './demo/draw_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_component.dart';


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
      // home: NavigatorDemo(), 
      //或使用以下路由
      initialRoute: '/mdc',//初始化一个路由
      routes: {
        '/':(context)=>NavigatorDemo(),
        '/about':(context)=>Page(title: 'About'),
        '/form':(context)=>FormDemo(),
        '/mdc':(context)=>MaterialComponents(),
      }, 
      // home: Home(),
      // home: SliverDemo(),
      theme: ThemeData( //设置主题色
        primarySwatch: Colors.pink,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//选中时高亮颜色
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(14, 14, 255, 1.0), 
      ),
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return  DefaultTabController(
      length: 5,
      child: Scaffold( //顶部工具栏、标签栏
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton( //顶部左图标（类似于leftBarButton）
          //   icon: Icon(Icons.menu),//添加图标
          //   tooltip: 'Navigration',
          //   onPressed: ()=>debugPrint('Navigation button is Pressed.'),//添加点击行为
          // ),
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
              Tab(icon: Icon(Icons.view_quilt)),
              Tab(icon: Icon(Icons.directions_bus)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.local_florist,size:128.0,color:Colors.black12),
            // RichTextDemo(),
            // TextDemo(),
            BasicDemo(),
            // Icon(Icons.change_history,size:128.0,color:Colors.black12),
            LayoutDemo(),
            // Icon(Icons.directions_bike,size:128.0,color:Colors.black12),
            ViewDemo(), //视图
            SliverDemo(),
          ],
        ),//ListViewDemo(),
        drawer: DrawerDemo(),
        //底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
        // endDrawer: Text('This is right drawer'),//右边抽屉
      ),
    ); 
  }
}

