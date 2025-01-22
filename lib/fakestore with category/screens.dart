import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepflutter/fakestore%20with%20category/screen2.dart';
import 'package:sepflutter/fakestore%20with%20category/service.dart';
void main(){
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [

      GetPage(name: '/', page: ()=>Categeryscreen()),
      GetPage(name: '/categorydetails', page: ()=> Categerydetails())
    ],

  ));
}
class Categeryscreen extends StatelessWidget {
  final FakestoreService fakestoreService= FakestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main categories"),
      ),
      body: FutureBuilder(future: fakestoreService.getMainCategories()
      ,
          builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return  Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(snapshot.hasError){
          return Center(child: Text("Error ${snapshot.error}"),);
        }
        else {
           List<String> Maincategories= snapshot.data!;
          return ListView.builder(
            itemCount: Maincategories.length,
              itemBuilder: (context,index){
              var category=Maincategories[index];
            return ListTile(
              title: Text(category),
              onTap: (){
                Get.toNamed('/categorydetails', arguments: category);
              },
            );

          });
        }




          }),



    );
  }
}
