//布局
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // return IconBadge(Icons.pool);

    return Container(
      child: Column(//或设置为Row
        //主轴
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //交叉轴
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access,size: 60,),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
    //一个小部件 
    // return Column(
    //   children: <Widget>[
    //     IconBadge(Icons.pool,size: 70),
    //   ],
    // );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;
  
  IconBadge(this.icon,{
    this.size = 32.0
  });
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Icon(icon,size:size,color: Colors.white),
      width: size+60,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}