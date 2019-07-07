//数据表格

import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
    );
  }

  void _sort(getField(post),bool ascending){
    _posts.sort((a,b){
      if(!ascending){
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {

  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
           PaginatedDataTable(
             header: Text('Posts'),
             rowsPerPage: 10,
             source: _postsDataSource,
             sortColumnIndex: _sortColumnIndex,//按第几列进行排序
             sortAscending: _sortAscending,//升序排序
            //  onSelectAll: (bool value){},//全选的状态
             columns: [
               DataColumn(
                //  label: Container(
                //    width: 80.0,
                //    child: Text('Title'),
                //  ),
                 label: Text('Title'),
                 onSort: (int culumnIndex,bool ascending){
                   _postsDataSource._sort((post) => post.title.length, ascending);
                   setState(() {
                     _sortColumnIndex = culumnIndex;
                     _sortAscending = ascending;
                    //  posts.sort((a,b){
                    //    if(!ascending){
                    //      final c = a;
                    //      a = b;
                    //      b = c;
                    //    }
                    //    return a.title.length.compareTo(b.title.length);
                    //  });
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

            //  rows: posts.map((post){
            //    return DataRow(
            //      selected: post.selected,
            //      onSelectChanged:(bool value){
            //        setState(() {
            //          if(post.selected != value){
            //            post.selected = value;
            //          }
            //        });
            //      },
            //      cells: [
            //        DataCell(Text(post.title)),
            //        DataCell(Text(post.author)),
            //        DataCell(Image.network(post.imageUrl)),
            //      ]
            //    );
            //  }).toList(),
           ),
          ],
        ),
      ),
    );
  }
}
