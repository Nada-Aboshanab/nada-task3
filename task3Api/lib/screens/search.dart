import 'package:flutter/material.dart';


import '../services/category_services.dart';

class SearchPage extends StatefulWidget {

  SearchPage({this.updateUi});
  VoidCallback? updateUi;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? categoryname;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Category")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onSubmitted: (data) async {
              categoryname = data;
              CategoryServices service = CategoryServices();


              widget.updateUi!();
              Future.delayed(Duration(milliseconds: 3000)).then((_) {
                Navigator.pop(context);
              });
              //Navigator.pop(context);
            },
            decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                label: Text("Search"),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                hintText: "Enter a Category"),
          ),
        ),
      ),
    );
  }
}
