import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/calu.dart';
import 'package:untitled/create.dart';
import 'package:untitled/splash.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:untitled/ui%20for%20air.dart';
import 'package:untitled/viedoplayer.dart';
import 'dark light.dart';
import 'ottpageone.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: FirebaseOptions(      
        apiKey: "AIzaSyBVeppcZ3Meow3Yujg5Giju6fo42kwljwc",
        appId:"1:711359590250:web:81132eea6dc2c6fdf9bf13",
        messagingSenderId: "711359590250",
        projectId: "nav2-90579",
    )



  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),

      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
              builder: (context, child) => ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  const Breakpoint(start: 0, end: 450, name: MOBILE),
                  const Breakpoint(start: 451, end: 800, name: TABLET),
                  const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                  const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                ],
              ), initialRoute: "/",
              debugShowCheckedModeBanner: false,
              theme:
              themeNotifier.isDark
                  ?
              ThemeData(
                useMaterial3: true,
                colorScheme:
                ColorScheme.fromSeed(brightness: Brightness.light, seedColor: Colors.blue),
                textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
                primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
              )
                  : ThemeData(
                useMaterial3: true,
                colorScheme:
                ColorScheme.fromSeed(brightness: Brightness.light,seedColor: Colors.red),
                textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
                primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(
                    bodyColor: Colors.black),
              ),
              home:

              sple(),
            );
          }),
    );
  }
}
