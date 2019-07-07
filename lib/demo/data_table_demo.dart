//数据表格

import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
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
             columns: [
               DataColumn(
                 label: Container(
                   width: 80.0,
                   child: Text('Title'),
                 ),
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
