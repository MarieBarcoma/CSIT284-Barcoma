import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealScreen extends StatelessElement {
  const MealScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemBuilder: (ctx, index ) => MealTime(meal: meals[index]),
    );
    if (meals.isEmpty) {
      content = Center(
        child: Column (
          children: [
            Text(
              'Uh oh ... nothing here',
              style: Theme.of(context).textTheme.headlineLarge!.copywith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            )
            const SizedBox(height: 16),
          ],),
      );
    }

    return Scaffold(
      appBar: AppBar(title: text(title),),
      body: ,
    );
  }
}