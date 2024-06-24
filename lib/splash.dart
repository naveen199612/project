import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:untitled/firebase.dart';



class ott extends StatefulWidget {
  const ott({super.key});

  @override
  State<ott> createState() => _ottState();
}

class _ottState extends State<ott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splashIconSize: 1000,
          duration: 950,
          splash: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1AML5N1WoBH9DtWL-fK_krRZpY0HnHaoivw&usqp=CAU"),
          nextScreen: email(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black),
    );
  }
}

