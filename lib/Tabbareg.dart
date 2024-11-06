import 'package:flutter/material.dart';

import 'gridviewcutm.dart';
import 'homepage.dart';
import 'listviewcustm.dart';
void main(){
  runApp(MaterialApp(home: Tabbareg(),debugShowCheckedModeBanner: false,));
}
class Tabbareg extends StatelessWidget {
  const Tabbareg({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar:AppBar(backgroundColor: Colors.red[100],
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("settings")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("help")),
                PopupMenuItem(child: Text("Linked Device")),



              ];
            })
          ],
          title: Text("Tabbar"),
          bottom: TabBar(
              dividerColor: Colors.cyan,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.blue,
              labelColor: Colors.yellow,
              tabs: [
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text("chat"),),
            Tab(child: Text("status"),),
            Tab(child: Text("call"),),

          ]),
        ) ,
        body: TabBarView(children: [
           Center(child: Text("data"),),
          Listviewcutm(),
          Center(child: Text("data"),),
          Center(child: Text("data"),),
        ]),
           floatingActionButton: FloatingActionButton(onPressed: (){}
           ,child: Icon(Icons.add),),
       ),
    );
  }
}
