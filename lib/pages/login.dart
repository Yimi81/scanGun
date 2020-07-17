import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';  
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login extends StatefulWidget {
  Login({Key key}):super(key:key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  GlobalKey _formKey = new GlobalKey<FormState>();

  var _selected;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Container(
        padding: EdgeInsets.fromLTRB(10, 70, 10, 0),
        child: SingleChildScrollView(//防止键盘弹出溢出问题
         child: GestureDetector(//点击空白处隐藏键盘 
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
         child: Column(
            children: [
              //头部logo和标题
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image
                    (
                      image:AssetImage("images/logo.png"),
                      width: 312,
                      height: 49,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top:20.0),
                  child: Text("WMS仓库管理系统",style:TextStyle(fontSize: 28.0)),
                ),

                // 中部输入框及下拉框
                Container(
                  margin: EdgeInsets.only(top:60.0),
                  child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.0),                          
                            child:Form(
                              key:_formKey,
                              autovalidate: false,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom:10),
                                    child:SingleChildScrollView(
                                      child: Row(

                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right:15),
                                            child:Icon(Icons.store,color: Colors.grey,),
                                          ),
                                         
                                          Expanded(
                                                child:Container(                                             
                                                            child:DropdownButton(                                                                                                 
                                                              items: [
                                                                      DropdownMenuItem(
                                                                        child: Text("1号仓"),
                                                                        value: "1号仓",
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child: Text("2号仓"),
                                                                        value: "2号仓",
                                                                      ),
                                                                      DropdownMenuItem(
                                                                        child: Text("3号仓"),
                                                                        value: "3号仓",
                                                                      ),
                                                                    ],
                                                                    hint: Text("请选择"),
                                                                    onChanged: (value){
                                                                        setState(() {
                                                                          _selected = value;
                                                                        });
                                                                                                                                                                                                            
                                                                  },       
                                                                    isExpanded: true,                                            
                                                                    value: _selected,
                                                                    style: TextStyle(fontSize: 20.0,color: Color(0xff4a4a4a)), 
                                                                    iconSize: 30.0,
                                                                    underline: Container(height: 1,color: Colors.grey,),// 下划线
                                                                  ),
                                                      ),
                                          ),
      
                                        ],
                                      )                                                                    
                       

                                        
                                      ),
                                    ),
                                  

                                  Padding(
                                    padding: EdgeInsets.only(bottom:10),
                                    child:  TextFormField(                          
                                            controller:username,
                                            style: TextStyle(fontSize:20.0),
                                            decoration: InputDecoration(
                                            hintText: "账号",
                                            hintStyle: TextStyle(fontSize:20.0),
                                            icon: Icon(Icons.person),
                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF565656)))
                                    ),
                                    //校验用户名
                                    validator: (v){
                                      return v
                                              .trim()
                                              .length > 0 ? null:"用户名不能为空";
                                    },
                                  ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom:10),
                                    child:  TextFormField(
                                            controller:password,
                                            style: TextStyle(fontSize:20.0),
                                            decoration: InputDecoration(
                                          
                                              hintText: "密码",
                                              hintStyle: TextStyle(fontSize:20.0),
                                              icon: Icon(Icons.lock),
                                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF565656)))
                                    ),
                                    obscureText: true,
                                    //校验密码
                                    validator: (v){
                                      return v
                                              .trim()
                                              .length > 5 ? null:"密码不能少于6位";
                                    },
                                  ),
                                  ),


                                ],
                              ),
                            ),                     
                       ),                
                ),

              //底部按钮
              Padding(
                padding: EdgeInsets.fromLTRB(28.0,30.0,20.0,0),
                child: Container(
                  height:50.0,
                  child:Row(
                  children: [
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Text("登录"),
                      color:Color(0xFFB51F22),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: (){
                        if((_formKey.currentState as FormState).validate())
                        {
                          if(username.text=="111"&&password.text=="123456")
                          {
                            Navigator.pushNamed(context,'/wms');
                          }
                          else
                          {
                            Alert(context: context, title: "RFLUTTER", desc: "error").show();
                          }
                        }
                      },
                    ),
                  ),
                ],),
                )                      
              ),
              Container(
                margin: EdgeInsets.only(top:10.0),
                padding: EdgeInsets.only(right:30.0),
                alignment:Alignment.bottomRight,
                child: Text("设置IP端口",style:TextStyle(color: Color(0XFF3E86F8),fontSize:12.0)),
              ),               
            ],
          ),
           ),
        )

       
        
      ),

    );
  }
}
