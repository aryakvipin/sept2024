import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Dismissableeg() ,));
}
class Dismissableeg extends StatelessWidget {
 var datas=["Data1","Data2","Data3","Data4",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(background: Container(color: Colors.red,
        ),
            secondaryBackground: Container(color: Colors.green,),

            key: ValueKey(datas), child:
        ListTile(

          title: Text(datas[index]),
        ));
      },itemCount: datas.length,),
    );
  }
}
