import 'package:flutter/material.dart';
import 'package:untitled/bmi.dart';
import 'package:untitled/calu.dart';
import 'package:untitled/gst%20calu.dart';



class allin extends StatefulWidget {
  const allin({super.key});

  @override
  State<allin> createState() => _allinState();
}

class _allinState extends State<allin> {
  // List pages=[
  //
  //   Center(child: Text("how",style: TextStyle(fontSize: 50),)),
  //   Center(child: Text("hii",style: TextStyle(fontSize: 50),)),
  // ];

  int currentindex=0;
  final pages = [
    calu(),
    gst(),
    bmi(),

  ];

  void tab(index){
    setState(() {
      currentindex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "calculator"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "gst"),
          BottomNavigationBarItem(
            icon:Icon(Icons.add_circle),
            label: "bmi",
          ),

        ],
        onTap: tab,
        currentIndex: currentindex,

      ),
    );
  }
}
