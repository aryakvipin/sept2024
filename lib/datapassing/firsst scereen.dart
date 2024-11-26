import 'package:flutter/material.dart';
import 'package:sepflutter/datapassing/second.dart';

import 'dummydata.dart';
void main(){
  runApp(
      MaterialApp(home:Firstscreen() ,
        routes: {
        "second":(context)=> Detailsscreen(),
        },
      ));
}
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: dummyprducts.map((product)=>GestureDetector(
          child:Card(
             child: Column(
               children: [
                Text(product["name"]) ,
                 Image(image:AssetImage( product["image"]),height: 200,)

               ],
             ),
          ),
       onTap:()=>getproduct(context, product["id"]) , ),
        ).toList(),
      ),
    );
  }

 Future<void> getproduct(BuildContext context, product)async {

 await Navigator.pushNamed(context, "second",arguments: product);

  }
}
