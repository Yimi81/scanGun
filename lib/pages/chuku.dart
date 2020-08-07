/*
 * @Author: your name
 * @Date: 2020-08-06 12:57:06
 * @LastEditTime: 2020-08-07 17:30:22
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\chuku.dart
 */



import 'package:flutter/material.dart';

class Chuku extends StatefulWidget {
  @override
  _ChukuState createState() => _ChukuState();
}

class _ChukuState extends State<Chuku> { 
  @override
  Widget build(BuildContext context) {
    final String info = ModalRoute.of(context).settings.arguments;
    List<Widget> _listItem = [_listTile1(),_listTile2(),_listTile3()];
    return Scaffold(
      appBar: AppBar(
        title:Text('商品出库'),
        centerTitle: true,
      ),
      body:Column(
         
            children: [
     
              Flexible(
               
                child: DecoratedBox(
                  decoration: BoxDecoration(
                  color:Colors.white,
                  ),            
                  child: ListView.separated(
                      itemCount:3,
                      
                      itemBuilder: (context,index)
                      {
                        return _listItem[index];
                      },
                      separatorBuilder: (context,index)
                      {
                        return Divider();
                      },
                  ),
                )
    
              ),
            Divider(),
             DecoratedBox(
                  decoration: BoxDecoration(
                      color:Colors.white,
                  ),    
                  child: Container(
                    margin: EdgeInsets.only(top:15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("beis")
                          ],
                        )
                      ],
                    ),
                  ),
              ),
           
            Flexible(
          
              child: Text("备注"),
            )
         
            
            ],
          )

      
    );
  }
}

Widget _listTile1()
{
  return ListTile(  
    
           title:Text('操作人',style: TextStyle(fontWeight:FontWeight.bold)),
           trailing: Text('Candy'),  
   );
}

Widget _listTile2()
{
  return  ListTile(  
           title:Text('出库类型',style: TextStyle(fontWeight:FontWeight.bold)),
                 trailing:Icon(Icons.arrow_forward),       
     );
}

Widget _listTile3()
{
  return  ListTile(  
            title:Text('子类型',style: TextStyle(fontWeight:FontWeight.bold)),
            trailing:Icon(Icons.arrow_forward),    
  );
}