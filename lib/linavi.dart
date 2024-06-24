import 'package:flutter/material.dart';

import 'list.dart';


class jsw extends StatefulWidget {
  final  abd;
  const jsw({super.key, required Listnew, this.abd,});

  get Listnew => navi;

  @override
  State<jsw> createState() => _rawState();


}

class _rawState extends State<jsw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(
            child: Text("TExt VALUE IS:\n ${widget.abd!}\n;",style:TextStyle(fontWeight: FontWeight.bold) ,),
          ),
          SizedBox(height: 20,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     ElevatedButton(onPressed: (){} , child: Text("EDIT"),
          //     ),
          //     ElevatedButton(onPressed: (){}, child: Text("DELETE"))
          //   ],
          // ),
        ],
      ),
    );
  }
}
