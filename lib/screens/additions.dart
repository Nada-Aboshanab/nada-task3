import 'package:flutter/material.dart';

import '../common/details.dart';
import '../common/items.dart';
import '../models/meals_model.dart';

class Additions extends StatefulWidget {
  const Additions({Key? key}) : super(key: key);

  @override
  State<Additions> createState() => _AdditionsState();
}

class _AdditionsState extends State<Additions> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }

  MealModel? MealData;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                , name:MealData?.strMeal,
                onTap: () => Navigator.push( context ,MaterialPageRoute(builder:( BuildContext context){
                  return const Details(
                    name:"",
                    image: 'assets/hala.jpg',
                  );
                }))

            ),

          ]
      ),
    );
  }
}
