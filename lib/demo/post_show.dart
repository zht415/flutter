import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;
  PostShow({ //构造函数
    @required this.post,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//导航条
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageUrl,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}',style: Theme.of(context).textTheme.title),
                SizedBox(height: 5.0),
                Text('${post.author}',style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32.0),//设置间距
                Text('${post.description}',style: Theme.of(context).textTheme.body1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}