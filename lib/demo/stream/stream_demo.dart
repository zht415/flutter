// Stream

import 'dart:async';

import 'package:flutter/material.dart';

class SteamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
} 

class _StreamDemoHomeState extends State<StreamDemoHome> {

  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '.';
  @override  
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();

    print('Create a stream');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController.broadcast();// StreamController<String>(); 订阅单个
    _sinkDemo = _streamDemo.sink;

    print('Start listening on a stream');
    _streamDemoSubscription =
     _streamDemo.stream.listen(onData,onError: onError,onDone: onDone);//给stream添加订阅
     _streamDemo.stream.listen(onDataTwo,onError: onError,onDone: onDone);//给stream添加订阅
    
    print('Initialize completed');
  }
  //有数据时
  void onData(String data){
    setState(() {
      _data = data;
    });
    print('onData $data');
  }
  void onDataTwo(String data){
    print('onDataTwo $data');
  }
  //发生错误时
  void onError(error){
    print('Error:$error');
  }
  //完成时
  void onDone(){
    print('Done!');
  }

  void _addDataStream() async{
     print('Add data to Stream.');
     String data = await fetchData();
    //  _streamDemo.add(data);
    _sinkDemo.add(data);
  }
  void _pauseStream(){
    print('Pause Subscription');
    _streamDemoSubscription.pause();
  }
  void _resumeStream(){
    print('Resume Subscription');
    _streamDemoSubscription.resume();
  }
  void _cancelStream(){
    print('Cancel Subscription');
    _streamDemoSubscription.cancel();
  }
  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 6));//延迟3s 3s后出现hello
    // throw 'Something Happened';//模拟异常
    return 'hello~';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_data),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataStream,
                ),
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}