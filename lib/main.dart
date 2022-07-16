import 'package:flutter/material.dart';
import 'package:fluttertest01/screens/category_meals_screen.dart';
import './screens/filters_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/categories_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.amberAccent, // Your accent color
      ),
      ),

      routes:{
        '/':(context)=>TabsScreen(),
        CategoryMealsScreen.routeName:(context)=>CategoryMealsScreen(),
        MealDetailScreen.routeName:(context)=>MealDetailScreen(),
        FiltersScreen.routeName:(context)=>FiltersScreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meal App',style:  GoogleFonts.lato(fontStyle: FontStyle.italic),),
        ),
        body: CategoriesScreen()

    );
  }
}
