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
          ListItem(title: 'Button',page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
} 
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //FlatButton
    final Widget FlatButtonDemo = Row(
       mainAxisAlignment:MainAxisAlignment.center,
       children: <Widget>[
          FlatButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.purple,
            textColor: Theme.of(context).accentColor,
          ),
          FlatButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
       ],
    );
    //RaisedButton
    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('RaisedButton'),
          onPressed: (){},
          splashColor: Colors.lightBlue,
          textColor: Theme.of(context).accentColor,
          elevation: 0.0,//设置阴影
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('RaisedButton'),
          onPressed: (){},
          splashColor: Colors.lightGreen,
          textColor: Theme.of(context).accentColor,
          elevation: 10.0,//设置阴影
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // FlatButtonDemo,
            RaisedButtonDemo,
          ],
        ),
      ),
    );
  }
}
class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}
//悬浮按钮
class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    //悬浮按钮
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.red,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30),
      // ),
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
      floatingActionButton: _floatingActionButton,
      // floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(//底部悬浮按钮
        child: Container(
          height: 90,
        ),
        shape: CircularNotchedRectangle(),
      ),
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