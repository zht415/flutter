//按钮
import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}
class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
  //悬浮按钮
  
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.cyan[90],
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );

     final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      // floatingActionButton: _floatingActionButton,
      floatingActionButton: _floatingActionButtonExtended,
    );
  }
}
class ListItem extends StatelessWidget {

  final String title;
  final Widget page; //按住列表 需要打开的页面

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page),
        );
      },
    );
  }
}