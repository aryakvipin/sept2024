import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sepflutter/foodapi/screens/widget/recipeGrid.dart';
import 'package:sepflutter/foodapi/screens/widget/search.dart';

import '../provider/recipeProvider.dart';

class RecipeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var recipeProvider = Provider.of<RecipeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        actions: [
          IconButton(onPressed: ()async{
            final String? query=await showSearch(
                context: context, delegate: Recipeserch())
            ;

            if(query!=null && query.isNotEmpty ){
              recipeProvider.searchRecipe(query);
            }
          },
              icon: Icon(Icons.search))
        ],

      ),
      body: recipeProvider.recipesnew.isEmpty
          ? Center(child: CircularProgressIndicator())
          : LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return RecipeGridView(recipeProvider.recipesnew, 4, constraints.maxWidth);
          } else if (constraints.maxWidth >= 400) {
            return RecipeGridView(recipeProvider.recipesnew, 2, constraints.maxWidth);
          } else {
            return RecipeGridView(recipeProvider.recipesnew, 1, constraints.maxWidth);
          }
        },
      ),
    );
  }
}

