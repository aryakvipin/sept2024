import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Listviewcutm(),));
// }
class Listviewcutm extends StatelessWidget {
  var name=["arun","manu","ram","anu"];
  var number=["987445454","748648798749","464874679","5646768778"];
  var img=["assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png"];
  var colors=[Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview custom"),),
      body: ListView.custom(
      childrenDelegate:SliverChildListDelegate(
        List.generate(name.length, (index)=> Card(
               child: ListTile(
                 leading:CircleAvatar(backgroundColor: colors[index],
                 child: Icon(Icons.person,size: 40,color: Colors.white,),) ,
                 title:Text(name[index]) ,
                 subtitle: Text(number[index]),
                 trailing:Icon(Icons.arrow_forward_ios_rounded),)
               ),
        ))
      ),
    );
  }
}
