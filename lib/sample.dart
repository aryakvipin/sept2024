import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow, Colors.blue],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft)),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance,color: Colors.green,size: 50,),
          Text(
                  "facebook",
                  style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
                ),
        ],
      ),
    ));
  }
}
