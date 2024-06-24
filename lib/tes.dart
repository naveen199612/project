import 'package:flutter/material.dart';

class GST extends StatefulWidget {
  const GST({super.key});

  @override
  State<GST> createState() => _GSTState();
}

class _GSTState extends State<GST> {

  TextEditingController a= TextEditingController();
  TextEditingController b= TextEditingController();
  TextEditingController c= TextEditingController();
  TextEditingController d= TextEditingController();
  TextEditingController e= TextEditingController();

  void GST()   {
    double pricevalue = double.parse(a.text);
    double gstrate = double.parse(b.text);

    double gstAmount = pricevalue * ( gstrate / 100);

    double exclusivePrice = pricevalue + gstAmount;

    double originalPrice = pricevalue/(1+gstrate/100);

    double inclusivePrice = pricevalue - originalPrice;


    c.text = gstAmount.toStringAsFixed(2);
    e.text = exclusivePrice.toStringAsFixed(2);
    d.text = inclusivePrice.toStringAsFixed(2);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("GST CALCULATOR1     "),
      ),
      body: Column(
        children: [
          SizedBox( height: 50,),
          Text("PRICE", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),

          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 20,color: Colors.pink,
                  fontWeight: FontWeight.bold),
              controller: a,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox( height: 2,),
          Text("GST%", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),

          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 20,color: Colors.pink,
                  fontWeight: FontWeight.bold),
              controller: b,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox( height: 2,),
          Text("GST AMOUT",
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,color: Colors.black),),

          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 20,color: Colors.pink,
                  fontWeight: FontWeight.bold),
              controller: c,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox( height: 2,),
          Text("INCLUSIVE", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),

          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 20,color: Colors.pink,
                  fontWeight: FontWeight.bold),
              controller: d,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox( height: 2,),
          Text("EXCLUSIVE GST", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.black),),

          Container(
            height: 100,
            width: 400,
            child: TextFormField(
              style: TextStyle(fontSize: 20,color: Colors.pink,
                  fontWeight: FontWeight.bold),
              controller: e,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox( height: 2,),
          ElevatedButton(onPressed: (){
            setState(() {
              GST();
            });
          },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text("CALCULATE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),

          // child: Text("calculate")),


        ],
      ),

    );
  }
}
