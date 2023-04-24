import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({ required this.image,required this.name}) ;
  final String  name;
  final String  image;


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



         body: Padding(
           padding: const EdgeInsets.all(9.0),
           child: Column(
             children: [
             Center(

               child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 150,
                    ),
             ),

               const SizedBox(
                 height: 40,
               ),
               Container(
                 color: Colors.black,
                 height: 50,
                 child: Center(
                   child: Text(name,style: const TextStyle(
                       fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white
                   ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 40,
               ),





             ],
           ),
         ),


    );
  }
}
