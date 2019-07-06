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
        //  child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              RegisterForm(),
            ],
          ),
        ),
       ),
    );
  }
}




//注册
class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

class  RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'UserName:',
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password:',
            ),
          ),
          SizedBox(height: 32),
          Container(
            width: double.infinity,
            child: RaisedButton(//提交按钮
              color: Theme.of(context).accentColor,
              child: Text('Register',style:TextStyle(color:Colors.white)),
              elevation: 0.0,
              onPressed: (){

              },
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  
  TextFieldDemoState createState() => TextFieldDemoState();
}
class TextFieldDemoState extends State<TextFieldDemo> {
  
  final textEditingController = TextEditingController(); //文本编辑控制器

  @override
  void dispose(){//管理编辑控制器对象 
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState(){//设置初始值 
    super.initState();
    // textEditingController.text = 'hi,pushui';
    textEditingController.addListener(
      (){
        debugPrint('input:${textEditingController.text}');
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){//监听文本框值的变化 
      //   debugPrint('input:$value');
      // },
      onSubmitted: (value){//点击done/完成时执行
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title.',//默认词，类似于placeholder
        // border: InputBorder.none, //设置边框
        // border: OutlineInputBorder(),
        filled: true,//设置背影颜色
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