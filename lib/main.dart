/*
 * @Author: your name
 * @Date: 2020-07-14 14:57:15
 * @LastEditTime: 2020-07-21 11:21:50
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\main.dart
 */ 

import 'package:flutter/material.dart';


import 'routes/routes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDA',
      theme: ThemeData(
        primarySwatch: null
      ),
      initialRoute: loginRoute,
      routes: routes

    );
  }
}

