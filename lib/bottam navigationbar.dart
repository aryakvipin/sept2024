import 'package:flutter/material.dart';

import 'gridviewcount.dart';
void main(){
  runApp(MaterialApp(home: Bottamnav(),));
}
class Bottamnav extends StatefulWidget {
  const Bottamnav({super.key});

  @override
  State<Bottamnav> createState() => _BottamnavState();
}

class _BottamnavState extends State<Bottamnav> {
  var screens=[
    Gridviewcount(),
    Center(child: Text("Favorite"),),
    Center(child: Text("Settings"),),
    Center(child: Text("Notification"),)
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: screens[index],),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
          unselectedItemColor: Colors.yellow,
          backgroundColor: Colors.red[100],
          currentIndex:index ,
          onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
          },

          type: BottomNavigationBarType.shifting,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.red[100]),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite",backgroundColor: Colors.red[100]),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.red[100]),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification",backgroundColor: Colors.red[100]),




      ]),
    );
  }
}
