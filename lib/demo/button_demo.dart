
//按钮
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //FlatButton
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purple,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //RaisedButton
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton.icon(
            icon: Icon(Icons.add),
            label: Text('RaisedButton'),
            onPressed: () {},
            splashColor: Colors.lightGreen,
            textColor: Theme.of(context).accentColor,
            elevation: 10.0, //设置阴影
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.green,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //OutLineButton 描边按钮
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('RaisedButton'),
            onPressed: () {},
            splashColor: Colors.green,
            borderSide: BorderSide(
              //描边按钮
              color: Colors.grey,
            ),
            textColor: Colors.purple,
            highlightedBorderColor: Colors.red,
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    //FixedWidthButton 容器按钮
    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.greenAccent,
          ),
        ),
      ],
    );
    //ExpandedButton
    final expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.brown,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.pink,
            highlightedBorderColor: Colors.green,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2, //相对第一个所占的比例
          child: OutlineButton(
            child: Text('Button-2'),
            onPressed: () {},
            splashColor: Colors.brown,
            borderSide: BorderSide(
              color: Colors.lightBlue,
            ),
            textColor: Colors.blue,
            highlightedBorderColor: Colors.green,
          ),
        ),
      ],
    );
    //ButtonBarButtonn
    final buttonBarButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('ButtonBar'),
                onPressed: () {},
                splashColor: Colors.greenAccent[100],
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                textColor: Colors.pink,
                highlightedBorderColor: Colors.red,
              ),
              OutlineButton(
                child: Text('ButtonBar~'),
                onPressed: () {},
                splashColor: Colors.greenAccent[100],
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
                textColor: Colors.pink,
                highlightedBorderColor: Colors.red,
              ),
            ],
          ),
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
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButtonDemo,
            buttonBarButtonDemo,
          ],
        ),
      ),
    );
  }
}
