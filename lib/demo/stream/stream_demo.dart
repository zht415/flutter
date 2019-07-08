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
    _streamDemo.listen(onData);
    
    print('Initialize completed');
  }
  
  void onData(String data){
    print('$data');
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));//延迟3s 3s后出现hello
    return 'hello~';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}