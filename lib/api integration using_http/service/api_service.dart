import 'package:http/http.dart'as http;

import '../model/productModel.dart';


class HttpService{
  static Future<List<Prodcut>> fetchProductus() async{
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
     if(response.statusCode == 200){
       var data = response.body;
       return prodcutFromJson(data);
     }else{
       throw Exception();
     }
  }
}