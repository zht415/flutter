import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {

  bool _checkoutBoxItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_CheckboxDemoState'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkoutBoxItemA,
              onChanged: (value){
                setState(() {
                  _checkoutBoxItemA = value;
                });
              },
              title: Text('CheckBox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),//左边标签
              selected: _checkoutBoxItemA,//标签选中状态
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   value: _checkoutBoxItemA,
                //   onChanged:(value){
                //     setState(() {
                //       _checkoutBoxItemA = value;
                //     });
                //   },
                //   activeColor: Colors.red,//勾选时的颜色
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}