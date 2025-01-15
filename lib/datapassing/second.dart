import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'dummydata.dart';

class Detailsscreen extends StatefulWidget {
  const Detailsscreen({super.key});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  @override
  Widget build(BuildContext context) {
      final id=ModalRoute.of(context)?.settings.arguments;
      final data =dummyprducts.firstWhere((product)=>product["id"]==id);

    return Scaffold(
        body: Card(color: Colors.green[100],
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(data["name"]),

            CarouselSlider(items: [

              Image(image: AssetImage(data["image"])) ,
              Image(image: AssetImage(data["image1"])) ,
              Image(image: AssetImage(data["image2"])) ,
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
            Text(data["details"]),
            Text(data["price"]),

          ],
        ),),
    );
  }
}
