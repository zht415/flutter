import 'package:flutter/material.dart';

class ExpansionPanelItem{
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}
class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  // bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;
  
 @override
  void initState() { //初始化
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A.'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel B.'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel C .'),
        ),
        isExpanded: false,
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback:(int panelIndex,bool isExpanded){
                setState(() {
                  // _isExpanded = !isExpanded; 
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map( //通过map获取每个Item
                (ExpansionPanelItem item){
                  return ExpansionPanel(
                    isExpanded:  item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context,bool isExpanded){
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          // 'Panel A',
                          item.headerText,
                          style:Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                  );
                }
              ).toList(),
              // children: [
              //   ExpansionPanel(
              //     headerBuilder: (BuildContext context,bool isExpanded){
              //       return Container(
              //         padding: EdgeInsets.all(16.0),
              //         child: Text(
              //           'Panel A',
              //           style:Theme.of(context).textTheme.title,
              //         ),
              //       );
              //     },
              //     body: Container(
              //       padding: EdgeInsets.all(16.0),
              //       width: double.infinity,
              //       child: Text('Content for Panel A.'),
              //     ),
              //     isExpanded: _isExpanded,//展示还是收起
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}