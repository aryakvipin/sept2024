import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Stackeg(),));
}
class Stackeg extends StatelessWidget {
  const Stackeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Container(color: Colors.blue[100], height: double.infinity,width: double.infinity,)),
          Positioned(height: 250,width: 502,top: 0,
            child: Container(
              decoration:
              BoxDecoration(color: Colors.blueAccent[400],
                  borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20))),
              child: Stack(
                children: [
                  Positioned(child: Icon(Icons.menu),left: 10,top: 10,),
                  Positioned(child: Text("Profile",style: TextStyle(fontSize: 25,color: Colors.white),),left: 25,top: 50,),
                  Positioned(child: Text("Edit your profile",style: TextStyle(fontSize: 20,color: Colors.white),),left: 25,top: 90,)

                ],
              ),
            )
          ,),
          Positioned(height: 90,width: 100,
          top: 200,left: 200,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/facebook.png",),)),
          Positioned(height: 100,width: 300,
              top: 300,left: 180,
              child: Text("Mishal Haneef",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),))
          ,Positioned(height: 500,width: 300,
              top: 350,left: 100,
              child:ListView(
                children: [
                  Card(color: Colors.blue[200],
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("My Account"),
                    ),
                  ),SizedBox(height: 10,),
                  Card(color: Colors.blue[200],
                    child: ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text("Dashboard"),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(color: Colors.blue[200],
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text("About"),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Card(color: Colors.blue[200],
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),

                  ),
                ],
              ))







        ],
      ),
    );
  }
}
