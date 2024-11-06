import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Bottamamsheet() ,));
}
class Bottamamsheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(
        child: TextButton(onPressed:()=>show(context) , child: Text("show")),
      ),),
    );
  }

 void show(BuildContext  context) {
    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [

          ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("help"),
          )
        ],
      );

    });
 }
}
