
//响应式编程
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';



class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
 
  @override
  void initState() {
    // Observable<String> _observable = 
      //  Observable(Stream.fromIterable(['Hello','您好']));
      // Observable.fromFuture(Future.value('hello ~'));
      // Observable.fromIterable(['hello','朴水']);
      // Observable.just('pushui~');
      //每隔3s就重复一次
      // Observable.periodic(Duration(seconds:3),(x)=>x.toString());
    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();
    BehaviorSubject<String> _subject = BehaviorSubject<String>();
    _subject.listen((data)=>print('listen 1:$data'));
    _subject.add('pushui');
    _subject.listen((data)=>print('listen 2:${data.toUpperCase()}'));
    _subject.add('add----');
    _subject.close();
  } 

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}