class FoodModel {
  final String foodName;
  final String foodIngredients;
  final String foodPrepation;
  final String foodImageUrl;

  FoodModel(
      {required this.foodName,
      required this.foodIngredients,
      required this.foodPrepation,
      required this.foodImageUrl});
  @override
  String toString() {
    return "$foodName - $foodImageUrl";
  }
}
