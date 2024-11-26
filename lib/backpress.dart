import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Backpress(),));
}
class Backpress extends StatelessWidget {
  const Backpress({super.key});

  @override
  Widget build(BuildContext context) {
    Future <bool>shodilogebox() async{
      return await showDialog(context: context, builder: (contex){
        return AlertDialog(
          title: Text("Exit!!"),
          content:Text("Do you Want to Exit the App!") ,
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
        }, child: Text("No"),
            ),
          ],
        );
      });


    }
    return WillPopScope(
      onWillPop: shodilogebox,
      child: Scaffold(

        body: Center(
          child: Text("welcome to flutter"),
        ),
      ),
    );
  }
}
