
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Chip(
                   label: Text('Lift'),
                 ),
                 SizedBox(width: 8.0),
                 Chip(
                   label: Text('Sunset'),
                   backgroundColor:  Colors.orange,
                 ),
                 SizedBox(width: 8.0),
                 Chip(
                   label: Text('Pushui'),
                   avatar: CircleAvatar(
                     backgroundColor: Colors.purple,
                     child: Text('朴'),
                   ),
                 ),
                 SizedBox(width: 8.0),
                 Chip(
                   label: Text('朴水'),
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