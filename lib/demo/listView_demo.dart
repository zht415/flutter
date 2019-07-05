 
import 'package:flutter/material.dart';
import '../model/post.dart';
 

 class ListViewDemo extends StatelessWidget{
   
   //设置每个单元格内的内容 类似于cell
  Widget _listItemBuilder1(BuildContext context,int index){
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

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[index].imageUrl,fit: BoxFit.cover),
              ),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16.0),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  debugPrint('Tap');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
    }
 }