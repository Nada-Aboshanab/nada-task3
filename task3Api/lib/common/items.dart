import 'dart:developer';

import 'package:flutter/material.dart';



class Items extends StatelessWidget {
  Items({ this.name, this.onTap,this.image}) ;
  String? name;
  Function()? onTap;
  String? image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap == null ? log('onTap Null') : onTap!();
        //onChange == null ? log("onChange Null.!") : onChange!("Na");
      },
      child: Container(height: 150,
        color: Colors.black,
        child: Row(
          children: [
            Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.all(8),
                child: Image.asset(image!,
                  width: 75, height: 75,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   name!,
                    style: const TextStyle(color: Colors.red, fontSize: 30,),
                  ),

                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
