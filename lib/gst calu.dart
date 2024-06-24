import 'package:flutter/material.dart';
class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController a =TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  TextEditingController d=TextEditingController();
  TextEditingController e=TextEditingController();
  void GST(){
    double pricevalue = double.parse(a.text);
    double gstrate = double.parse(b.text);
    double gstAmount = pricevalue *(gstrate/100);
    double exclusivePrice =  pricevalue + gstAmount;
    double originalPrice =pricevalue/ (1+gstrate/100);
    double inclusivePrice = pricevalue - originalPrice;


    c.text = gstAmount.toStringAsFixed(2);
    e.text = exclusivePrice.toStringAsFixed(2);
    d.text = inclusivePrice.toStringAsFixed(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.menu),
       title: Text("GST"),
     ),
      body: Column(
        children: [
          SizedBox(height: 3,),
          Text("PRICE",style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.black ),),
          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
              controller: a,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 3,),
          Text("GST %",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),
          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 30,color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: b,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text("GST amount",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),
          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 30,color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: c,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text("INCLUSIVE",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),
          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 30,color: Colors.black,
                fontWeight: FontWeight.bold,),
              controller: d,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("EXCLUSIVE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 30,
                color: Colors.black,fontWeight: FontWeight.bold,),
              controller: e,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Container(
          //   height: 100,
          //   width: 300,
          //   child: TextFormField(
          //     style: TextStyle(fontSize: 20,color: Colors.black,
          //         fontWeight: FontWeight.bold),
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 2,),
          ElevatedButton(onPressed: (){
            setState(() {
              GST();
            });
          },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text("CALCULATE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),

        ],
      ),
    );
  }
}
