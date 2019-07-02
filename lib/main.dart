import 'package:flutter/material.dart';
import 'model/post.dart';
 
// void main(){
//   runApp(App());
// }
// 或使用以下方法
void main()=> runApp(App());

class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Home(),
      theme: ThemeData( //设置主题色
        primarySwatch: Colors.red
      ),
    );
  }
}

class Home extends StatelessWidget{

//设置每个单元格内的内容 类似于cell
  Widget _listItemBuilder(BuildContext context,int index){
    // return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( //顶部工具栏、标签栏
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('朴水'),
          elevation: 1.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
  }
}
class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
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