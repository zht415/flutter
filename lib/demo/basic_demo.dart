import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.cyan[100],
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size:32.0,color:Colors.white),
            color: Color.fromRGBO(3, 33, 250, 1.0),
            padding: EdgeInsets.all(16.0),//内边距
            margin: EdgeInsets.all(8.0),//外边距
            width: 90.0,
            height: 90.0,
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget{
  //设置字体的样式
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,    
  );
  final String _author = '李白';
  final String _title = '登金陵凤凰台';
  @override
  //富文本字体的设置
    Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'This is pushui',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.Flutter',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
            ),
          ),
        ]
      ),
    );
  }
}
class TextDemo extends StatelessWidget{
    //设置字体的样式
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,    
  );
  final String _author = '李白';
  final String _title = '登金陵凤凰台';
  @override

  //一般字体的设置
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