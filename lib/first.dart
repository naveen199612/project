import 'package:flutter/material.dart';
class TODAY extends StatelessWidget {
   TODAY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: (
          Container(
            height: 50,
            width: 30,
            decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("good/ged.jpg"),
               fit: BoxFit.fill
             ),
            ),
          )
          ),

        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 200,
                child: Image.asset("good/new.jpg"),

              ),
              Container(
                height: 300,
                width: 200,
                child:Image.asset("good/new.jpg") ,
              )
            ],
          ),
          Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("good/new.jpg"),
                  fit: BoxFit.fill,
                )
            ),
            child: Column(
              children: [
                TextFormField(),
                TextFormField(),
                TextFormField(),

              ],
            ),


          )
          
        ]
         
    ),
          );
        
      
    
  }
}
