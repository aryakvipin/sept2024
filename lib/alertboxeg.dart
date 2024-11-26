import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Alertboxeg() ,));
}
class Alertboxeg extends StatelessWidget {
  const Alertboxeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(

        child: TextButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("Exit !!"),
              content: Text("Do you want to exit !"),
              actions: [
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: Text("yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();

                }, child: Text("No")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();

                }, child: Text("cancel")),
              ],
            );
          });
        }, child: Text("alert")),

      ),),
    );
  }
}
