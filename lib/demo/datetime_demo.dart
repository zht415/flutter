//日期选择器

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeState createState() => _DateTimeState();
}

class _DateTimeState extends State<DateTimeDemo> {
  //选择的时间
  DateTime selectedDate = DateTime.now();
  //日期选择窗口
  _selectDate() async{
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,//初始日期
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if(date == null) return;
    setState(() {
      selectedDate = date;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_DateTimeDemo'),
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
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      // Text(DateFormat.yMd().format(selectedDate)),
                      Text(DateFormat.yMMMMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}