/*
 * @Author: your name
 * @Date: 2020-07-24 10:10:09
 * @LastEditTime: 2020-07-24 10:10:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\template.dart
 */ 

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
@JsonSerializable()
class User {
    User();

    String name;
    String email;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}