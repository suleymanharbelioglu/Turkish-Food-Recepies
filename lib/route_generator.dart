import 'package:flutter/material.dart';
import 'package:turkish_food_recepies/model/food_model.dart';
import 'package:turkish_food_recepies/page/error.dart';
import 'package:turkish_food_recepies/page/food_list.dart';
import 'package:turkish_food_recepies/page/food_recipe.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => FoodList(),
        );
      case "/foodRecipePage":
        return MaterialPageRoute(
          builder: (context) =>
              FoodRecipe(food: settings.arguments as FoodModel),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
    }
  }
}
