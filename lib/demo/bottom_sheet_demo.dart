import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemState createState() => _BottomSheetDemState();
}

class _BottomSheetDemState extends State<BottomSheetDemo> {

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openModelBottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
              ),
              ListTile(
                title: Text('Option B'),
              ),
              ListTile(
                title: Text('Option C'),
              ),
            ],
          ),
        );
      }
    );
  }
  _openBottomSheet(){
    _bottomSheetScaffoldKey
    .currentState
    .showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90,
          color: Colors.cyan,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you - Coldplay',textAlign:TextAlign.right),
              ), 
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
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
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Model BottomSheet'),
                  onPressed: _openModelBottomSheet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}