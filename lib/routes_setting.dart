//route names
import 'package:flutter/material.dart';
import 'package:task2/common/details.dart';
import 'package:task2/screens/additions.dart';
import 'package:task2/screens/beef.dart';
import 'package:task2/screens/chicken.dart';
import 'package:task2/screens/drinks.dart';
import 'package:task2/screens/home.dart';
import 'package:task2/screens/kids.dart';

const String homePage='home';
const String beefPage='Beef';
const String chickenPage='Chicken';
const String kidsPage='Kids';
const String addPage='Additions';
const String drinkPage='Drinks';
const String detailPage='Details';


Route<dynamic> controller(RouteSettings settings){
  switch (settings.name){
    case homePage:return MaterialPageRoute(builder: (context)=> const Home());
    case beefPage:return MaterialPageRoute(builder: (context)=>  Beef());
    case chickenPage:return MaterialPageRoute(builder: (context)=>const Chicken());
    case kidsPage:return MaterialPageRoute(builder: (context)=>const Kids());
    case addPage:return MaterialPageRoute(builder: (context)=> const Additions());
    case drinkPage:return MaterialPageRoute(builder: (context)=>const Drinks());


    default:
      throw('Error:this route not define');
  }

}



