import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Flexibleui() ,));
}

class Flexibleui extends StatelessWidget {
  const Flexibleui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.red,height: 100,width: double.infinity,),
          Flexible(flex: 3,
              child: Container(color: Colors.green,)),
          Flexible(flex: 2,
              child: Container(color: Colors.yellow,))




        ],
      ),
    );
  }
}
