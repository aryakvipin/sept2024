import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Lisvtviewsepertaed() ,));
}
class Lisvtviewsepertaed extends StatelessWidget {
  var name=["arun","manu","ram","anu","arun","manu","ram","anu","arun","manu","ram","anu"];
  var number=["987445454","748648798749","464874679","5646768778","987445454","748648798749","464874679","5646768778","987445454","748648798749","464874679","5646768778"];
  var img=["assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png",
    "assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png",
    "assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png"];
  var colors=[Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent,
    Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent,
    Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent];
  var course=["flutter","testing","python","big data",
    "flutter","testing","python","big data","flutter","testing","python","big data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview"),),
      body: ListView.separated(itemBuilder: (context,index){
         return Card(color: colors[index],
           child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
           title: Text(name[index]),
           subtitle: Text(number[index]),
           trailing: Icon(Icons.call),
         ),) ;
        
        
      },
          
          separatorBuilder: (context,index){
           if(index%3==0){
             return Card(
               child: Text(course[index]),
             );
           }
           else{
             return SizedBox();

           }
        
        
        
          }, 
          itemCount: name.length),
    );
  }
}
