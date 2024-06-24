import 'package:flutter/material.dart';
import 'package:untitled/gop.dart';
import 'package:untitled/seet.dart';

import 'bor.dart';

class botm extends StatefulWidget {
  const botm({super.key});

  @override
  State<botm> createState() => _botmState();
}

class _botmState extends State<botm> {

  int _naja = 0;

  final pages = [
    ott2(),
    setig(),
    Pro(),


  ];

  void tap (index)
  {
    setState(() {
      _naja = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages [_naja],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "My Profile",backgroundColor: Colors.black),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _naja,
          onTap: tap,
        )
    );
  }

 // static oot2() {}

}