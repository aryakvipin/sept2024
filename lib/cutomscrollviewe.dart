import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Cutomscrollviewe() ,));
}
class Cutomscrollviewe extends StatelessWidget {
  const Cutomscrollviewe({super.key});

  @override
  Widget build(BuildContext context) {
    var name=["arun","manu","ram","anu"];
    var number=["987445454","748648798749","464874679","5646768778"];
    var img=["assets/images/img1.png","assets/images/img2.png","assets/images/img3.png","assets/images/img4.png"];
    var colors=[Colors.yellow,Colors.blue,Colors.red,Colors.pinkAccent];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.yellow[100],
            floating: true,
            pinned: true,
            expandedHeight: 160,
            title: Text("Sliver ui"),
            centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

            ],
            bottom: AppBar(backgroundColor: Colors.yellow[100],
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search something!!!",
                    prefixIcon: Icon(Icons.search)

                  ),

                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: 
            Container(height: 100,width: double.infinity,
            child: Card(color: Colors.greenAccent,
              child: Center(child: Text("flutter")),
            ),),),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              child: ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage(img[index]),) ,
                title: Text(name[index]),
                subtitle: Text(number[index]),
              ),
            );



          },childCount: name.length)),
          SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
               return Card(child: Image(image: AssetImage(img[index]),fit: BoxFit.fill,),);
          },childCount: img.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)

        ],
      ),
    );
  }
}
