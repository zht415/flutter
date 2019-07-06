//表单
import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Theme(
         data: Theme.of(context).copyWith( //ThemeData
           primaryColor: Colors.cyan,
         ),
         child: ThemeDemo(),
       ),
    );
  }
}

class ThemeDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor, //Theme.of(context).primaryColor,
    );
  }
}