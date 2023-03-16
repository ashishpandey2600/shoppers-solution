import 'package:flutter/material.dart';

class NutritionChart extends StatefulWidget {
  const NutritionChart({super.key});

  @override
  State<NutritionChart> createState() => _NutritionChartState();
}

class _NutritionChartState extends State<NutritionChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nutrition Chart")),
      body: Text("Loading..."),
    );
  }
}
