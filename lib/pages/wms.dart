/*
 * @Author: mark
 * @Date: 2020-07-16 14:34:13
 * @LastEditTime: 2020-07-17 16:58:02
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\wms.dart
 */ 
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class WMS extends StatefulWidget {
  @override
  _WMSState createState() => _WMSState();
}

class _WMSState extends State<WMS> {
  
  @override
  Widget build(BuildContext context) {
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
                  Text("姓名: Candy",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                  Text("     员工号: 10060801",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                ],
              ),
            ),

            Padding(
                    padding: EdgeInsets.only(top:3.0),
                    child:new StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) => new Container(
                        color: Colors.green,
                        child: new Center(
                          child: new CircleAvatar(
                            backgroundColor: Colors.white,
                            child: new Text('$index'),
                          ),
                        )),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 2 : 1),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  )
               )

          ]
        ),
    );
  }
}