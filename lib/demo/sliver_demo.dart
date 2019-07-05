
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(//设置顶部Bar
            // title: Text('朴水'),
            // pinned: true,//顶部是否固定
            floating: true,
            expandedHeight: 150,//向下扩展的高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'PuShui Flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://resources.ninghao.net/images/overkill.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            // sliver: SliverListDemo(),
            sliver: SliverGridDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        posts[index].imageUrl,
                         fit:BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,//显示比例
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context,int index){
          return Container(
            child:Image.network(
              posts[index].imageUrl,
              fit:BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}