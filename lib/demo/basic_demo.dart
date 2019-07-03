import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{

  //设置字体的样式
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,    
  );
  final String _author = '李白';
  final String _title = '登金陵凤凰台';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》--$_author。 凤凰台上凤凰游，凤去台空江自流。吴宫花草埋幽径，晋代衣冠成古丘。三山半落青天外，二水中分白鹭洲。总为浮云能蔽日，长安不见使人愁.',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 2,//最多几行
      overflow: TextOverflow.ellipsis,//表示省略
    ); 
  }
}