
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
void main(){
  runApp(MaterialApp(home:Splashscreen() ,));
}
class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState() {
        Timer(Duration(seconds: 5),(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));

        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.cover,)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/facebook.png",),height: 70,width: 70,),
            Text("My App",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
