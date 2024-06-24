import 'package:flutter/material.dart';
import 'package:untitled/login%20first.dart';

import 'oot1.dart';


class out extends StatefulWidget {
  const out({super.key});

  @override
  State<out> createState() => _outState();
}

class _outState extends State<out> {
  final naja = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Amazon_Prime_Video_logo.svg/2560px-Amazon_Prime_Video_logo.svg.png"),
        ),
        title: Center(child: Text("Logout Page")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      body: Form(
        key: naja,
        child: Column(
          children: [

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: "Enter Your Name"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  validator: (input){
                    if(input==null  ||  input.isEmpty)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter Your Password"
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              if(naja.currentState!.validate()){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ott1 ()),
                );
              }
            }, child: Text("Logout")),




          ],
        ),
      ),
    );
  }
}