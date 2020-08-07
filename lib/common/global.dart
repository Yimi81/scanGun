
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
const _themes = <MaterialColor>[
    Colors.blue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.red
];

class Global{
  static SharedPreferences _prefs;
  
  static List<MaterialColor> get themes => _themes;

  //是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");
  // 初始化全局信息，会在APP启动时执行
  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }
}