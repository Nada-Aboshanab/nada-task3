import 'package:flutter/material.dart';
import 'package:task2/common/category.dart';
import 'package:task2/screens/additions.dart';
import 'package:task2/screens/drinks.dart';
import 'package:task2/screens/kids.dart';
import '../models/category_model.dart';
import 'beef.dart';
import 'chicken.dart';
import 'package:task2/routes_setting.dart' as route;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  updateUi() async {
    if (mounted) {
      setState(() {});
    }
  }

  CategoryModel? CategoryData;
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
          padding: const EdgeInsets.all(8),
         // shrinkWrap: true,
          //physics: ScrollPhysics(),
          children: [
            Category(
              onTap: (){

               Navigator.pushNamed(context, route.beefPage);

              },
              text:    CategoryData?.strCategory,
              image:  CategoryData?.getImage(),
            ),

            // Category(
            //   onTap: (){
            //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            //     //   return const Chicken(
            //     //   );
            //     // }));
            //     Navigator.pushNamed(context, route.chickenPage);
            //   },
            //   text: "Checken Burger",
            //   image: 'assets/tasty-chicken-burger-black-background-reflection-lettuce-cheese-cucumber-bacon-fried-onion-mayonnaise-178713335.jpg',
            // ),
            // Category(
            //   onTap: (){
            //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            //     //   return const Kids(
            //     //   );
            //     // }));
            //     Navigator.pushNamed(context, route.kidsPage);              },
            //   text: "Kids Meal",
            //   image: 'assets/download.jpeg',
            // ),
            // Category(
            //   onTap: (){
            //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            //     //   return const Additions(
            //     //   );
            //     // }));
            //     Navigator.pushNamed(context, route.addPage);
            //   },
            //   text: "Additions",
            //   image: 'assets/depositphotos_321708962-stock-photo-french-fries-baked-fries-different.jpg',
            // ),
            //
            // Category(
            //   onTap: (){
            //     // Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            //     //   return const Drinks(
            //     //   );
            //     // }));
            //     Navigator.pushNamed(context, route.drinkPage);
            //   },
            //   text: "Drinks",
            //   image: 'assets/881dfa97168855.5ebeba577327f.jpg',
            // ),

          ],
        )
    );
  }
}
