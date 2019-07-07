//数据表格

import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
           DataTable(
             sortColumnIndex: _sortColumnIndex,//按第几列进行排序
             sortAscending: _sortAscending,//升序排序
            //  onSelectAll: (bool value){},//全选的状态
             columns: [
               DataColumn(
                 label: Container(
                   width: 80.0,
                   child: Text('Title'),
                 ),
                 onSort: (int index,bool ascending){
                   setState(() {
                     _sortColumnIndex = index;
                     _sortAscending = ascending;
                     posts.sort((a,b){
                       if(!ascending){
                         final c = a;
                         a = b;
                         b = c;
                       }
                       return a.title.length.compareTo(b.title.length);
                     });
                   });
                 }
               ),
               DataColumn(
                 label: Text('Author'),
               ),
               DataColumn(
                 label: Text('Image'),
               ),
             ],
             rows: posts.map((post){
               return DataRow(
                 selected: post.selected,
                 onSelectChanged:(bool value){
                   setState(() {
                     if(post.selected != value){
                       post.selected = value;
                     }
                   });
                 },
                 cells: [
                   DataCell(Text(post.title)),
                   DataCell(Text(post.author)),
                   DataCell(Image.network(post.imageUrl)),
                 ]
               );
             }).toList(),
            //  rows: [
            //    DataRow(
            //      cells: [
            //        DataCell(Text('Hello~')),
            //        DataCell(Text('PuShui')),
            //      ]
            //    ),
            //     DataRow(
            //      cells: [
            //        DataCell(Text('Hola~')),
            //        DataCell(Text('朴水')),
            //      ]
            //    ),
            //    DataRow(
            //      cells: [
            //        DataCell(Text('Morning~')),
            //        DataCell(Text('Pata')),
            //      ]
            //    ),
            //  ],
           ),
          ],
        ),
      ),
    );
  }
}
