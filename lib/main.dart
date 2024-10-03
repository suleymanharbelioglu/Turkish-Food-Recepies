import 'package:flutter/material.dart';
import 'package:turkish_food_recepies/page/food_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: FoodList(),
    );
  }
}
