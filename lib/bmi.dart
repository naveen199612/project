import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController a= TextEditingController();
  TextEditingController b= TextEditingController();
  var res;
  String BMI="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("BMI cal",style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.monitor_weight_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 250,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colors.pink,
                          fontWeight: FontWeight.bold),
                      controller: a,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "enter your weight in kg",

                          hintStyle: TextStyle(fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.monitor_weight_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 250,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20, color: Colors.pink,
                          fontWeight: FontWeight.bold),
                      controller: b,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "enter your HIGHT in CM",

                          hintStyle: TextStyle(fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            res = double.parse(a.text) / ((double.parse(b.text) / 100 *
                (double.parse(b.text) / 100).round().toInt()));
            if (res < 18.5) {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      width: 412,
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Text("BMI:$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          Text("Weight Status:under weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        ],
                      ),
                    );
                  }
              );
            }
            else if (res >= 18.5 && res < 24.9) {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      width: 412,
                      color: Colors.green,
                      child: Column(
                        children: [
                          Text("BMI:$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          Text("Weight Status:Normal Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        ],
                      ),
                    );
                  }
              );
            }
            else if (res >= 24.9 && res < 29.9) {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      width: 412,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Text("BMI:$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          Text("Weight Status:Over Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        ],
                      ),
                    );
                  }
              );
            }
            else {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      width: 412,
                      color: Colors.cyan,
                      child: Column(
                        children: [
                          Text("BMI:$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          Text("Weight Status:Obesity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        ],
                      ),
                    );
                  }
              );
            }

          },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text("CALCULATE", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),)),


  ]
    ),

    );
  }
}
