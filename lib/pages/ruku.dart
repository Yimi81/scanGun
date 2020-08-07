/*
 * @Author: your name
 * @Date: 2020-08-06 10:41:06
 * @LastEditTime: 2020-08-06 12:53:55
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\pages\ruku.dart
 */


import 'package:flutter/material.dart';

class Ruku extends StatefulWidget {
  @override
  _RukuState createState() => _RukuState();
}

class _RukuState extends State<Ruku> {
  List<Box> data = [
  Box('x2020080101', '烤炉01',101,'GA','2020-08-06'),
  Box('x2020080102', '烤炉02',231,'SPA','2020-08-06'),
  Box('x2020080103', '烤炉03',431,'DG','2020-08-06'),
  Box('x2020080104', '烤炉04',121,'GS','2020-08-06'),
  Box('x2020080105', '烤炉05',341,'GA','2020-08-06'),
];
var _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    final String info = ModalRoute.of(context).settings.arguments;

    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        selected: data[i].selected,

        onSelectChanged: (selected){
          setState(() {
            data[i].selected = selected;
          });
        },
        
        cells: [
          DataCell(Text('${data[i].id}')),
          DataCell(Text('${data[i].name}')),
          DataCell(Text('${data[i].count}')),
          DataCell(Text('${data[i].from}')),
          DataCell(Text('${data[i].time}')),
        ],
      ));
    }
    return  Scaffold(
      appBar: AppBar(
        title:Text('商品入库'),
        centerTitle: true,
      ),
      body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                    child:DataTable(
                    sortColumnIndex: 0,
                    sortAscending: _sortAscending,           
                    columns: [
                      DataColumn(label: Text('商品编号'),tooltip: '按什么按',onSort: (int columnIndex,bool ascending){
                        setState(() {
                          _sortAscending = ascending;
                          if(ascending)
                          {
                            data.sort((a,b) => a.id.compareTo(b.id));
                          }
                          else
                          {
                            data.sort((a,b) => b.id.compareTo(a.id));
                          }
                        });
                      }),
                      DataColumn(label: Text('商品名称'),tooltip: '按什么按'),
                      DataColumn(label: Text('商品数量'),tooltip: '按什么按'),
                      DataColumn(label: Text('发货地'),tooltip: '按什么按'),
                      DataColumn(label: Text('发货时间'),tooltip: '按什么按'),
                    ],
                    rows: dateRows,
              ),
          )

      ) 

    );
  }
}



class Box {
  Box(this.id, this.name, this.count,this.from,this.time,{this.selected = false});

  String id;
  String name;
  int count;
  String from;
  String time;
  bool selected;
}
