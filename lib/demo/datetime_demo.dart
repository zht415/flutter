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
  TimeOfDay selectedTime = TimeOfDay(hour: 9,minute: 30);
  //日期选择期 XX年XX月XX日  
  Future<void> _selectDate() async{//会加到异步队列中 或者前面加 Future<void>
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
  //时间选择器  上午、下午、几点
  _selectTime() async{
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if(time == null)return;
    setState(() {
      selectedTime = time;
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
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectedTime.format(context)),
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