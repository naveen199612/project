import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:untitled/firebase.dart';



class sple extends StatefulWidget {
  const sple({super.key});

  @override
  State<sple> createState() => _spleState();
}

class _spleState extends State<sple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splashIconSize: 1000,
          duration: 950,
          splash: Image.network(
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fiverr.com%2Fdorothy_paqu%2Fmake-an-awesome-hotel-logo&psig=AOvVaw07F74jP93wkgTiuJsUZ3dw&ust=1719297223418000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjUr7bP84YDFQAAAAAdAAAAABAh"),
          nextScreen: email(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black),
    );
  }
}