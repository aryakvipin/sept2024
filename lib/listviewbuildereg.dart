import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listviewbuildereg(),));
}
class Listviewbuildereg extends StatelessWidget {

  var name=["arun","manu","ram","anu"];
  var number=["987445454","748648798749","464874679","5646768778"];
  var img=["assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png"];
  var colors=[Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview builder"),backgroundColor: Colors.greenAccent,),
      body: ListView.builder(itemBuilder: (context,index){
          return  Card(color: colors[index],
            child: ListTile(
              leading:Image(image: AssetImage(img[index])) ,
              title: Text(name[index]),
              subtitle:Text(number[index]) ,
              trailing: Icon(Icons.call),
            ),
          );


      },itemCount: name.length,),
    );
  }
}
