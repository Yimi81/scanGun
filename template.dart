/*
 * @Author: your name
 * @Date: 2020-07-24 10:10:09
 * @LastEditTime: 2020-07-24 10:10:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\template.dart
 */ 

import 'package:json_annotation/json_annotation.dart';
%t
part '%s.g.dart';
@JsonSerializable()
class %s {
    %s();

    %s
    factory %s.fromJson(Map<String,dynamic> json) => _$%sFromJson(json);
    Map<String, dynamic> toJson() => _$%sToJson(this);
}