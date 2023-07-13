import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_with_sp/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => splash_screenState();
}

class splash_screenState extends State<splash_screen> {

  var KEY = "isLoggedIn";

  @override
  void initState() {
    super.initState();

    checkSP();

  }

  void checkSP() async{
    var sp = await SharedPreferences.getInstance();
    var login = sp.getBool(KEY);

    if (login!=null){
      if (login){

         Timer(Duration(seconds: 4),
             (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
             });
      }
      else{
        Timer(Duration(seconds: 4),
                (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_screen(),));
            });
      }
    }
    else{
      Timer(Duration(seconds: 4),
              (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_screen(),));
          });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("SplashScreen")),
      body: Center(child: Container(color: Colors.black, height:double.infinity,width:double.infinity, child: Icon(Icons.apple, size: 45, color: Colors.white,))),
    );
  }
}
