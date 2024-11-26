import 'package:flutter/material.dart';
import 'package:sepflutter/custmwidegt.dart';

import 'datepicker.dart';
void main(){
  runApp(MaterialApp(home:Custui(),));
}
class Custui extends StatelessWidget {
  const Custui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Custmwidget(
             clr: Colors.yellow,
            title: Text("data"),
            img: Image(image: AssetImage("assets/images/bg.jpg")),
            onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Datepickereg()));
            }),
      ),
    );
  }
}
