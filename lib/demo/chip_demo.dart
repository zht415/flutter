
//小标签 
import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap( //如果超过屏幕最大值需使用Wrap，不超过使用Row，需同时使用mainAxisAlignment
              // mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8.0,//设置部件之间的间隔
              // runSpacing: 8.0,//设置行与行之间的间隔
              children: <Widget>[
                 Chip(
                   label: Text('Lift'),
                 ),
                 Chip(
                   label: Text('Sunset'),
                   backgroundColor:  Colors.orange,
                 ),
                 Chip(
                   label: Text('Pushui'),
                   avatar: CircleAvatar(
                     backgroundColor: Colors.purple,
                     child: Text('朴'),
                   ),
                 ),
                 Chip(
                   label: Text('朴水，你好啊~，我很好'),
                   avatar: CircleAvatar(
                     backgroundImage: NetworkImage(
                       'https://resources.ninghao.net/images/wanghao.jpg',
                     ),
                   ),
                 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}