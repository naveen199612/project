import 'package:flutter/material.dart';

import 'list.dart';


class raw extends StatefulWidget {
  final  abd;
  const raw({super.key, required a, required a1, this.abd});

  get a => navi;

  @override
  State<raw> createState() => _rawState();
}

class _rawState extends State<raw> {
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
            child: Text("TExt VALUE IS: ${widget.abd!};",style:TextStyle(fontWeight: FontWeight.bold) ,),
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
