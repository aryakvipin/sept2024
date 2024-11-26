import 'package:flutter/material.dart';

class Custmwidget extends StatelessWidget {
  final Text title;
  final Color ?clr;
  final Text ?subtitle;
  final Image img;
  VoidCallback onpress;
  Custmwidget({required this.title,  this.clr,  this.subtitle, required this.img,required this.onpress});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: clr,
        child: ListTile(
          leading:img ,
          title: title,
          subtitle: subtitle,
          onTap: onpress,
        ),
      ),
    );
  }
}
