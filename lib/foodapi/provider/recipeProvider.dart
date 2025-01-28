// provider/recipeProvider.dart
import 'package:flutter/cupertino.dart';

import '../model/recipe.dart';
import '../service/recipeService.dart';

class RecipeProvider extends ChangeNotifier {



   List<Recipe> _recipes = [];
   List<Recipe> filteredrecipie=[];
  //
   List<Recipe> get recipesnew =>  filteredrecipie.isNotEmpty? filteredrecipie:_recipes;
  Future<void> fetchRecipes() async {
    try {
      Recepie recepie = await RecipeService.fetchRecipes();
      _recipes = recepie.recipes ?? [];
      notifyListeners();
    } catch (e) {
      throw Exception('Failed to load recipes: $e');
    }
  }

  void searchRecipe(String query){
     filteredrecipie= _recipes.where((recipe){
       return recipe.name!.toLowerCase().contains(query.toLowerCase());
     }).toList();
     notifyListeners();

  }
}
