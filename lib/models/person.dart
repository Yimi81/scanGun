/*
 * @Author: your name
 * @Date: 2020-07-24 10:10:09
 * @LastEditTime: 2020-07-24 10:10:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \scangun\template.dart
 */ 

import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';
@JsonSerializable()
class Person {
    Person();

    String name;
    String email;
    Person mother;
    List<Person> friends;
    
    factory Person.fromJson(Map<String,dynamic> json) => _$PersonFromJson(json);
    Map<String, dynamic> toJson() => _$PersonToJson(this);
}