import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:checkkedbox() ,));
}
class checkkedbox extends StatefulWidget {
  @override
  State<checkkedbox> createState() => _checkkedboxState();
}

class _checkkedboxState extends State<checkkedbox> {
  bool ischecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(checkColor: Colors.green,
            activeColor: Colors.black,

            value: ischecked, onChanged: (bool ? value){
          setState(() {
            ischecked=value!;

          });
        }),
      ),
    );
  }
}
