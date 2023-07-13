import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_with_sp/main.dart';
import 'package:login_screen_with_sp/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login_screen extends StatefulWidget {  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("LoginScreen"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(),
            TextField(),
            ElevatedButton(onPressed: () async{

              var sp = await SharedPreferences.getInstance();
              sp.setBool(splash_screenState().KEY, true);

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));

            }, child: Text("Login"))
          ],),
      )
    );
  }}
