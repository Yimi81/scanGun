/*
 * @Author: mark
 * @Date: 2020-07-16 14:34:13
 * @LastEditTime: 2020-07-21 10:02:42
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\wms.dart
 */ 
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
class WMS extends StatefulWidget {
  @override
  _WMSState createState() => _WMSState();
}

class _WMSState extends State<WMS> {
  
  
  
  @override
  Widget build(BuildContext context) {
    final String userName = ModalRoute.of(context).settings.arguments;
    return  Scaffold(
        appBar:  AppBar(
          automaticallyImplyLeading:false,
          centerTitle: true,
          title:Text("WMS仓库管理系统",style:TextStyle(fontSize: 20.0)),

        ),
        body: Column(
          children:[
            Container(
              color: Color(0xff3E86F8),
              height: 40.0,
              padding: EdgeInsets.only(left:15.0),
              child: Row(
                children: [
                  Text("姓名: $userName",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                  Text("     员工号: 10060801",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                ],
              ),
            ),


          ]
        ),
    );
  }
}