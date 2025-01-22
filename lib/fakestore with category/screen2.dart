import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sepflutter/fakestore%20with%20category/service.dart';

class Categerydetails extends StatelessWidget {
  final FakestoreService fakestoreService= FakestoreService();

  @override
  Widget build(BuildContext context) {
    final String selectedCategery= Get.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text(" $selectedCategery Details"),
      ),
      body: FutureBuilder <List<Map<String,dynamic>>>(future:fakestoreService.getProductsByCategory(selectedCategery,),
        builder: ( context,snapshot) { 
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(snapshot.hasError){
          return Center(
            child: Text("Error${snapshot.error}"),
          );
        }
        else{
           List<Map<String,dynamic>> products=snapshot.data!;
          return  ListView.builder(itemCount: products.length,
              itemBuilder: (context,index){
            Map<String,dynamic> prodcut=products[index];
             return 
               Card(child: 
               ListTile(
                 title: Text(prodcut['title']) ,
                 subtitle: Text(prodcut['description']),
               ),);
            
            
          });
        }
        
        },),
    );
  }
}
