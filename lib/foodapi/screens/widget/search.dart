import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepflutter/foodapi/model/recipe.dart';

import '../../provider/recipeProvider.dart';

class Recipeserch extends  SearchDelegate<String>{
  @override
  List<Widget>? buildActions(BuildContext context) {
     return [
        IconButton(onPressed: (){
          query='';
        },
            icon: Icon(Icons.clear))
     ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
 return IconButton(onPressed: (){
   close(context, '');
 },
     icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
      final recipeProvider = Provider.of<RecipeProvider>(context);
      final List<Recipe> suggestions=query.isEmpty ? []
          : recipeProvider.recipesnew.where((recipe){
        return recipe.name!.toLowerCase().contains(query.toLowerCase());
      }).toList();

      return ListView.builder(itemCount: suggestions.length,
          itemBuilder: (context,index){
        return ListTile(
          title:  Text(suggestions[index].name??''),
          onTap: (){
            close(context, suggestions[index].name??'');
          },
        );

      });
  }

}