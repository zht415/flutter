

import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              //自定义Header
              UserAccountsDrawerHeader(
                accountName: Text('朴水',style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text('846877359@qq.com'),
                //用户头像
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                //修改背影颜色、图像
                decoration: BoxDecoration(
                  color: Colors.purple[400],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    //混合模式
                    colorFilter: ColorFilter.mode(
                      Colors.purple[400].withOpacity(0.6), 
                      BlendMode.hardLight
                      )
                  )
                ),
              ),
              ListTile(//设置标题
                title: Text('Message',textAlign:TextAlign.right),
                //在标题尾部添加图标
                trailing: Icon(Icons.message,color:Colors.cyan,size:22.0),
                //关闭抽屉
                onTap: ()=>Navigator.pop(context),
              ),
              ListTile(//设置标题
                title: Text('Favorite',textAlign:TextAlign.right),
                //在标题尾部添加图标
                trailing: Icon(Icons.favorite,color:Colors.red,size:22.0),
                //关闭抽屉
                onTap: ()=>Navigator.pop(context),
              ),
              ListTile(//设置标题
                title: Text('Settings',textAlign:TextAlign.right),
                //在标题尾部添加图标
                trailing: Icon(Icons.settings,color:Colors.brown,size:22.0),
                //关闭抽屉
                onTap: ()=>Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}