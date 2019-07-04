import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.8,//显示的比例
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,  
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}