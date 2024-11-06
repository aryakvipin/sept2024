import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listvieweg(),));
}
class Listvieweg extends StatelessWidget {
  const Listvieweg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Listview"),backgroundColor: Colors.yellow[100],centerTitle: true,),
      body: ListView(
        children: [
          Card(color: Colors.greenAccent,
            child: ListTile(
              leading: Image(image: AssetImage("assets/images/facebook.png")),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.yellow[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/bg.jpg"),),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage:AssetImage("assets/images/facebook.png") ,),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.greenAccent,
            child: ListTile(
              leading: Image(image: AssetImage("assets/images/facebook.png")),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.yellow[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/bg.jpg"),),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage:AssetImage("assets/images/facebook.png") ,),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.greenAccent,
            child: ListTile(
              leading: Image(image: AssetImage("assets/images/facebook.png")),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.yellow[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/bg.jpg"),),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage:AssetImage("assets/images/facebook.png") ,),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.greenAccent,
            child: ListTile(
              leading: Image(image: AssetImage("assets/images/facebook.png")),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.yellow[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/bg.jpg"),),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.blue[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage:AssetImage("assets/images/facebook.png") ,),
              title: Text("arya"),
              subtitle: Text("546775657474"),
              trailing: Icon(Icons.call),

            ),
          ),




        ],
      ),
    );
  }
}
