import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawereg(),));
}
class Drawereg extends StatelessWidget {
  const Drawereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow[100],
        child: ListView(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.fill)),
            accountName: Text("Arya"),
            accountEmail: Text("arya@gmail.com")
          ,currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/facebook.png"),
            ),otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage(
                  "assets/images/img1.png"),backgroundColor: Colors.yellow,)
          ],
          ),
          ListTile(
            leading: Icon(Icons.send),
            title:Text("Sent") ,
          ),
          ListTile(
            leading: Icon(Icons.outbox),
            title:Text("Outbox") ,
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_outlined),
            title:Text("Importent") ,
          ),
          ListTile(
            leading: Icon(Icons.drafts),
            title:Text("Drefts") ,
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title:Text("All email") ,
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title:Text("Trash") ,
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text("Settings") ,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title:Text("senf feedback") ,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title:Text("Help") ,
          ),





        ],),
      ),
      body: Center(child: Text("welcome"),),
    );
  }
}
