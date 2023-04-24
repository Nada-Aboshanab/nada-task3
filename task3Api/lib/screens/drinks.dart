import 'package:flutter/material.dart';

import '../common/details.dart';
import '../common/items.dart';
import 'package:task2/routes_setting.dart'as route;

import '../models/meals_model.dart';
class Drinks extends StatefulWidget {
  const Drinks({Key? key}) : super(key: key);

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }

  MealModel? MealData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pinkAccent,
      ),

      body:
      ListView(
          children:[
            Items(image:MealData?.getImage()
                , name: MealData?.strMeal,
                onTap: () => Navigator.push( context ,MaterialPageRoute(builder:( BuildContext context){
                  return const Details(
                    name: "",
                    image: '',
                  );
                }))


            ),



          ]
      ),
    );
  }
}
