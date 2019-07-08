// Stream

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

  @override
  void initState() {
    super.initState();
    
    print('Create a stream');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    
    print('Start listening on a stream');
    _streamDemo.listen(onData,onError: onError,onDone: onDone);//给stream添加订阅
    
    print('Initialize completed');
  }
  //有数据时
  void onData(String data){
    print('******* $data');
  }
  //发生错误时
  void onError(error){
    print('Error:$error');
  }
  //完成时
  void onDone(){
    print('Done!');
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));//延迟3s 3s后出现hello
    throw 'Something Happened';
    // return 'hello~';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}