import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carosaulslidereg(),));
}
class Carosaulslidereg extends StatelessWidget {
  const Carosaulslidereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.green,
        title: Text("Farmers Fresh Zone"),
      actions: [
        Icon(Icons.location_on),
        Text("kochi")
      ],bottom:AppBar(backgroundColor: Colors.green,
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
        ) ,) ,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(

            child: Row(

              children: [
                SizedBox(width: 50,),
                OutlinedButton(onPressed: (){}, child: Text("Vegitables",style: TextStyle(color: Colors.green),),style:OutlinedButton.styleFrom(overlayColor: Colors.green,side: BorderSide(color: Colors.green)),),
                SizedBox(width: 35,),
                OutlinedButton(onPressed: (){}, child: Text("Fruits",style: TextStyle(color: Colors.green),),style:OutlinedButton.styleFrom(overlayColor: Colors.green,side: BorderSide(color: Colors.green)),),
                SizedBox(width: 35,),
                OutlinedButton(onPressed: (){}, child: Text("Exotic Cuts",style: TextStyle(color: Colors.green),),style:OutlinedButton.styleFrom(overlayColor: Colors.green,side: BorderSide(color: Colors.green)),),

              ],
            ),
          ),

          CarouselSlider(items: [

            Image(image: AssetImage("assets/images/bg.jpg")),
            Image(image: AssetImage("assets/images/bg.jpg")),
            Image(image: AssetImage("assets/images/bg.jpg")),
            Image(image: AssetImage("assets/images/bg.jpg")),
          ], options: CarouselOptions(
            height: 300,


            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 2,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeOutExpo,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,),
            child: Container(padding: EdgeInsets.only(top: 20),
              height: 80,decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(

                children: [
                  SizedBox(width: 50,),
                     Column(
                       children: [
                         Icon(Icons.timer),
                         Text("30 minit policey")
                       ],
                     ),
                  SizedBox(width: 30,),

                  Column(
                    children: [
                      Icon(Icons.spatial_tracking),
                      Text("Tracability")
                    ],
                  ),
                  SizedBox(width: 30,),

                  Column(
                    children: [
                      Icon(Icons.local),
                      Text("Local sourroundings")
                    ],
                  )
                ],
              ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("Shop by categery",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
            
              return Card(

                child: Image(image: AssetImage("assets/images/bg.jpg")),
              );
            
            
            
            },itemCount: 9,),
          )
        ],
      ),
    );
  }
}
