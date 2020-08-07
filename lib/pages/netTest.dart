/*
 * @Author: your name
 * @Date: 2020-07-30 17:01:36
 * @LastEditTime: 2020-08-06 11:21:53
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\netTest.dart
 */ 

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Net extends StatefulWidget {
  @override
  _NetState createState() => _NetState();
}

class _NetState extends State<Net> {
  List str;
  @override
  Widget build(BuildContext context) {
    Widget divider = Divider(color: Colors.blue,);
    return Scaffold(
      appBar: AppBar(
        title:Text('网络测试'),centerTitle:true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async{
                var dio = Dio();
                try{

                    showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('提示'),
                        content: Text("确认获取数据？"),
                        actions: <Widget>[
                          FlatButton(child: Text('取消'),onPressed: (){Navigator.of(context).pop();},),
                          FlatButton(child: Text('确认'),onPressed: () async{
                            Response response = await dio.get('https://www.wanandroid.com/friend/json');                                            
                            print(response.data["data"]);
                            String s = JsonEncoder().convert(response.data["data"]);                         
                            str = json.decode(s);
                            print('str: $str');
                            Navigator.of(context).pop();
                          },),
                        ],
                      );
                    });

                }catch(e)
                {
                  print(e);
                }
          },
            )
        ],
        ),
      body: ListView.separated(
          itemCount: 10,
        
          itemBuilder: (BuildContext context,int index){
            return ListTile(title: Text('$str[index]'),);
          },
          separatorBuilder: (BuildContext context,int index){
            return divider;
          }
      ),
    );
  }
}