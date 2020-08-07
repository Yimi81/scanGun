/*
 * @Author: your name
 * @Date: 2020-07-17 15:41:46
 * @LastEditTime: 2020-08-06 12:58:12
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\routes.dart
 */ 




import 'package:flutter/material.dart';

import '../pages/wms.dart';
import '../pages/login.dart';
import '../pages/rgc.dart';
import '../pages/netTest.dart';
import '../pages/ruku.dart';
import '../pages/chuku.dart';

const String loginRoute = "/login";
const String wmsRoute = "/wms";
const String rgcRoute = "/rgc";
const String netRoute = "/netTest";
const String rukuRoute = "/ruku";
const String chukuRoute = "/chuku";
Map<String,WidgetBuilder> routes = <String, WidgetBuilder>{
  loginRoute:(context) => Login(),
  wmsRoute:(context) => WMS(),
  rgcRoute:(context) => RGC(),
  netRoute:(context) => Net(),
  rukuRoute:(context) => Ruku(),
  chukuRoute:(context) => Chuku(),
};
