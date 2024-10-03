import 'package:flutter/material.dart';
import 'package:turkish_food_recepies/page/error.dart';
import 'package:turkish_food_recepies/page/food_list.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => FoodList(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
    }
  }
}
