import 'package:flutter/material.dart';
import 'package:fluttertest01/screens/category_meals_screen.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoryItem extends StatelessWidget {
   String title;
   String id;
   Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.4),
                  color,
                ],
                begin: Alignment.topLeft,
                // end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
    );
  }
}
