import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context,bool isExpanded){
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Panel A',
                        style:Theme.of(context).textTheme.title,
                      ),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Text('Content for Panel A.'),
                  ),
                  // isExpanded: true,//默认展示还是收起
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}