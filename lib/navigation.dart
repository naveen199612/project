import 'package:flutter/material.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/spo.dart';
import 'package:untitled/validation.dart';


class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  // List pages=[
  //
  //   Center(child: Text("how",style: TextStyle(fontSize: 50),)),
  //   Center(child: Text("hii",style: TextStyle(fontSize: 50),)),
  // ];

  int currentindex=0;
  final pages = [
    amaz(),
    spot(),
    gram(),

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
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "amz"),
          BottomNavigationBarItem(
              icon:Icon(Icons.add_circle),
            label: "inst",
          ),

        ],
        onTap: tab,
        currentIndex: currentindex,

      ),
    );
  }
}
