//状态管理

import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget { //状态不再变化
    @override
    _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo>{
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Counter(_count),
      // body: Center(
      //   child: Chip(
      //     label: Text('$count'),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count += 1;
          });
           print(_count);
        },
      ),
    );
  }
}
class Counter extends StatelessWidget {
  final int count;
  Counter(this.count);//构造函数
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text('$count'),
      ),
    );
  }
}
//无状态
class StateManagementDemo1 extends StatelessWidget { //状态不再变化

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          count += 1;
          print(count);
        },
      ),
    );
  }
}