/*
 * @Author: your name
 * @Date: 2020-07-17 15:41:46
 * @LastEditTime: 2020-07-17 15:47:36
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\routes.dart
 */ 

import 'package:flutter/material.dart';

import 'pages/wms.dart';
import 'pages/login.dart';



const String loginRoute = "/login";
const String wmsRoute = "/wms";

Map<String,WidgetBuilder> routes = <String, WidgetBuilder>{
  loginRoute:(context) => Login(),
  wmsRoute:(context) => WMS()
};
