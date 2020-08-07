/*
 * @Author: mark
 * @Date: 2020-07-20 08:56:08
 * @LastEditTime: 2020-08-06 13:19:41
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\rgc.dart
 */ 


import 'package:flutter/material.dart';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:dio/dio.dart';
class MyIcons{
  static const IconData ruku = const IconData(
    0xe617,
    fontFamily: 'myIcon',
    matchTextDirection: true
  );
}
class RGC extends StatefulWidget {
  @override
  _RGCState createState() => _RGCState();
}

class _RGCState extends State<RGC> {
   String barcode = "123";

     scan() async {
    var options = ScanOptions();

    ScanResult result = await BarcodeScanner.scan(options: options);
    setState(() {
      barcode = result.rawContent;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        centerTitle: true,
        title:Text('仓库管理系统',style:TextStyle(fontSize: 20.0)),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
              Navigator.of(context).pushNamed('/netTest');
            },
          )
        ],
        ),
        drawer:MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(24.0),
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            childAspectRatio: 0.875,
            children: [

            GestureDetector(
              child:Card(                   
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(MyIcons.ruku,color: Colors.purple,),           
                      Container(
                        padding: EdgeInsets.only(bottom:6),
                        child: Image(image:AssetImage("images/ruku.png"),width: 30,height: 30,),
                      ),                    
                      Text("入库",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                    ],
                  )                   
                ),
              onTap: (){
                    // scan();
                    Navigator.of(context).pushNamed('/ruku',arguments: barcode);
              },
            ),
      
            GestureDetector(
              child: Card(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(MyIcons.ruku,color: Colors.purple,),
                    Container(
                      padding: EdgeInsets.only(bottom:6),
                      child: Image(image:AssetImage("images/chuku.jpg"),width: 30,height: 30,),
                    ),                    
                    Text("出库",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                  ],
                )
              ),
              onTap: (){
                //scan();
                Navigator.of(context).pushNamed('/chuku',arguments:barcode);
              },
            ),

              
              Card(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(MyIcons.ruku,color: Colors.purple,),
                    Container(
                      padding: EdgeInsets.only(bottom:6),
                      child: Image(image:AssetImage("images/pandian.jpg"),width: 30,height: 30,),
                    ),                    
                    Text("盘点",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                  ],
                )
              ),
              
              Card(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(MyIcons.ruku,color: Colors.purple,),
                    Container(
                      padding: EdgeInsets.only(bottom:6),
                      child: Image(image:AssetImage("images/kucun.jpg"),width: 30,height: 30,),
                    ),                    
                    Text("库存",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                  ],
                )
              ),
              
              Card(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(MyIcons.ruku,color: Colors.purple,),
                    Container(
                      padding: EdgeInsets.only(bottom:6),
                      child: Image(image:AssetImage("images/qita.jpg"),width: 30,height: 30,),
                    ),                    
                    Text("其它",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                  ],
                )
              ),              
              Card(
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(MyIcons.ruku,color: Colors.purple,),
                    Container(
                      padding: EdgeInsets.only(bottom:6),
                      child: Image(image:AssetImage("images/shezhi.jpg"),width: 30,height: 30,),
                    ),                    
                    Text("设置",style:TextStyle(fontSize: 16,color:Color(0xff333333)))
                  ],
                )
              ),
            ],
          ),
        ),
      
    );
  }

}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          
                      UserAccountsDrawerHeader(
                          
                          accountName: Text('Candy'),
                          accountEmail: Text('10060801'),                                                   
                          onDetailsPressed: (){},
                          currentAccountPicture:
                          new CircleAvatar(backgroundImage: new AssetImage("images/1.jpg")),

                        ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:20.0),
                      //   child:                    Row(
                      //     children: [
                      //       Text.rich(
                      //         TextSpan(
                      //          children: [
                      //            TextSpan(
                      //              text:"姓名: ",
                      //              style:TextStyle(fontWeight: FontWeight.bold)
                      //            ),
                      //            TextSpan(
                      //              text:"易国峰"
                      //            )
                      //          ] 
                      //         )
                      //       ),
                      //       Text.rich(
                      //         TextSpan(
                      //          children: [
                      //            TextSpan(
                      //              text:"    员工号: ",
                      //              style:TextStyle(fontWeight: FontWeight.bold)
                      //            ),
                      //            TextSpan(
                      //              text:"10060801"
                      //            )
                      //          ] 
                      //         )
                      //       ),
                      //     ],
                      //   ),
                      // ),
    
                     
                  
                      Expanded(
                        child: ListView(
                          children:[
                            ListTile(
                              leading: const Icon(Icons.add),
                              title: const Text('Add account'),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: const Icon(Icons.looks),
                              title: const Text('Work record'),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: const Icon(Icons.settings),
                              title: const Text('Manage accounts'),
                              trailing: Icon(Icons.arrow_forward),
                            ),

                          ]
                        ),
                      )
                    ],
                  ),
      ),
    );
  }
}