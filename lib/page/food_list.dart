import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade400,
        centerTitle: true,
        title: Text("Food List",
            style: TextStyle(fontSize: 30, color: Colors.white)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {},
      ),
    );
  }
}
