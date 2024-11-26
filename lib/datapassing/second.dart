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
        body: Container(color: Colors.green[100],width: double.infinity,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(data["name"]),
           Image(image: AssetImage(data["image"])) ,
            Text(data["details"]),
            Text(data["price"]),




          ],
        ),),
    );
  }
}
