import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return PageView(
      // pageSnapping: false,//页面切换到一半时 是否自动弹回 默认为YES
      // reverse: true,//是否倒序显示视图
      scrollDirection: Axis.vertical,//垂直滚动
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0,color: Colors.red),
          ),
        ),
        Container(
          color: Colors.cyan[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0,color: Colors.green),
          ),
        ),
      ],
    );
  }
}
