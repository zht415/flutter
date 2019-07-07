//状态管理

import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  //状态不再变化
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count += 1;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {

    return CounterProvider(
      count: _count,
      increaseCount: _increaseCount ,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCount,
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('StateManagementDemo'),
    //     elevation: 0.0,
    //   ),
    //   body: CounterWrapper(_count,_increaseCount),
    //   // body: Center(
    //   //   child: Chip(
    //   //     label: Text('$count'),
    //   //   ),
    //   // ),
    //   floatingActionButton: FloatingActionButton(
    //     child: Icon(Icons.add),
    //     onPressed: _increaseCount,
    //     // onPressed: (){
    //     //   setState(() {
    //     //     _count += 1;
    //     //   });
    //     //    print(_count);
    //     // },
    //   ),
    // );
  }
}

class CounterWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final VoidCallback increaseCount = CounterProvider.of(context).increaseCount;
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}

//通过InheritedWidget 可以直接对部件赋值
class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount; //回调函数，
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

//无状态
class StateManagementDemo1 extends StatelessWidget {
  //状态不再变化

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
        onPressed: () {
          count += 1;
          print(count);
        },
      ),
    );
  }
}
