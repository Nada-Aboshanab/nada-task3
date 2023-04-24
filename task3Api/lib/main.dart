import 'package:flutter/material.dart';
import 'package:task2/routes_setting.dart';
import 'package:task2/screens/additions.dart';
import 'package:task2/screens/beef.dart';
import 'package:task2/screens/chicken.dart';
import 'package:task2/screens/drinks.dart';
import 'package:task2/screens/home.dart';
import 'package:task2/screens/kids.dart';
import 'package:task2/routes_setting.dart' as route;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),

    );
  }
}
