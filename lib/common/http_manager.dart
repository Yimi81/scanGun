/*
 * @Author: your name
 * @Date: 2020-08-05 09:40:24
 * @LastEditTime: 2020-08-05 10:02:19
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\lib\common\http_manager.dart
 */
import 'package:dio/dio.dart';


class Http{
   static Http _instance;

  static Http getInstance() {
    if (_instance == null) {
      _instance = Http();
    }
    return _instance;
  }

  Dio dio = Dio();

  Http() {
    dio.options.baseUrl = "https://www.wanandroid.com/";
    dio.options.connectTimeout = 10000;
    dio.options.receiveTimeout = 5000;
  }
}