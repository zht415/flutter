
//小标签 
import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];
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
              runSpacing: 8.0,//设置行与行之间的间隔
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
                 Chip(
                   label: Text('City'),//带删除按钮的标签
                   onDeleted: (){},
                   deleteIcon: Icon(Icons.delete),
                   deleteIconColor: Colors.redAccent,
                   deleteButtonTooltipMessage: 'Remove this tag',//长按删除时会显示删除提示
                 ),
                 Divider(//分隔符
                  color: Colors.purple,
                  height: 2.0,
                  // indent: 32.0,//缩进
                 ),
                 Wrap(
                   spacing: 8.0,
                   children: _tags.map((tag){
                     return Chip(
                       label: Text(tag),
                       onDeleted: (){
                         setState(() {
                           _tags.remove(tag);
                         });
                       },
                     );
                   }).toList(),
                 ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon',
            ];
          });
        },
      ),
    );
  }
}