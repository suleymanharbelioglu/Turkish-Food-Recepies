import 'package:flutter/material.dart';
import 'package:turkish_food_recepies/model/food_model.dart';

class FoodListItem extends StatelessWidget {
  final FoodModel food;
  const FoodListItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        alignment: Alignment.center,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(5, 5),
                blurRadius: 5,
                spreadRadius: 1),
          ],
          color: Colors.white,
        ),
        child: ListTile(
          onTap: () {
            Navigator.of(context).pushNamed("/foodRecipePage", arguments: food);
          },
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(food.foodImageUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          title: Text(
            food.foodName + " Recipe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
