import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mylis extends StatefulWidget {
  const mylis({super.key});

  @override
  State<mylis> createState() => _mylisState();
}


TextEditingController NAME = TextEditingController();
 TextEditingController EMAIL = TextEditingController();
 TextEditingController PASSWORD = TextEditingController();
 final addd =[];
 void numbers() {
  String con1 = NAME.text;
  String con2 = EMAIL.text;
  String con3 = PASSWORD.text;
  setState(() {
   addd.add('$con1,$con2,$con3');
    NAME.clear();
    EMAIL.clear();
    PASSWORD.clear();
  });
}

void setState(Null Function() param0) {
}
class _mylisState extends State<mylis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(
           child:  Container(
            width: 200,
            child: TextFormField(
              controller: NAME,
              decoration: InputDecoration(
                hintText: "NAME",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width:200 ,
              child: TextFormField(
                controller: EMAIL,
                decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                controller: PASSWORD,
                decoration: InputDecoration(
                  hintText:"PASSWORD",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  numbers();
                });
              },
              child: Text("ADD")),
          SizedBox(height: 20,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: ListView.builder(
               itemCount: addd.length,
                itemBuilder: (context,index) =>Card(
                  elevation: 50,

                 child: Column(
                   children: [
                     Text(addd[index],
                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                     ),
                   ],
                 ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
