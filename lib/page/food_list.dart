import 'package:flutter/material.dart';
import 'package:turkish_food_recepies/data/strings.dart';
import 'package:turkish_food_recepies/model/food_model.dart';
import 'package:turkish_food_recepies/widget/food_list_item.dart';

class FoodList extends StatelessWidget {
  late List<FoodModel> foodList;
  FoodList() {
    foodList = generateFoodList();
    print(foodList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text("Food List",
            style: TextStyle(fontSize: 30, color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return FoodListItem(food: foodList[index]);
        },
      ),
    );
  }

  List<FoodModel> generateFoodList() {
    List<FoodModel> list = [];
    for (int i = 0; i < Strings.foodImageNameList.length; i++) {
      list.add(FoodModel(
          foodName: Strings.foodNameList[i],
          foodIngredients: Strings.foodIngredientList[i],
          foodPrepation: Strings.foodPreparationList[i],
          foodImageUrl:
              "assets/images/" + Strings.foodImageNameList[i] + ".jpg"));
    }
    return list;
  }
}
