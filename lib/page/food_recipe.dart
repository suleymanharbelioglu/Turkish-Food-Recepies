import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:turkish_food_recepies/model/food_model.dart';

class FoodRecipe extends StatefulWidget {
  final FoodModel food;
  const FoodRecipe({super.key, required this.food});

  @override
  State<FoodRecipe> createState() => _FoodRecipeState();
}

class _FoodRecipeState extends State<FoodRecipe> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator paletteGenerator;
  @override
  void initState() {
    generateAppbarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appbarColor,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.food.foodName,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                widget.food.foodImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList.list(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.food.foodIngredients,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Preparation",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.food.foodPrepation,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> generateAppbarColor() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.food.foodImageUrl));
    appbarColor = paletteGenerator.vibrantColor!.color;
    setState(() {});
  }
}
