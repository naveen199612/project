import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class newapp extends StatelessWidget {
  newapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("good/new.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage("good/ged.jpg"),
                ),
              ),),
              // child: Container(
              //   child: (
              //   Row(
              //     children: [
              //       Container(
              //         height: 200,
              //         width: 180,
              //         child: Image.asset("good/ged.jpg"),
              //       ),
              //       Column(
              //         children: [
              //           Row(
              //             children: [
              //               Container(
              //                 height: 85,
              //                 width: 80,
              //                 child: Image.asset("good/avn.jpg"),
              //               ),
              //             ],
              //           )
              //         ],
              //       )
              //
              //
              //     ],
              //   )
              //   ),
              //
              // ),



            SizedBox(height: 20,),
            Text('hiiii'),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(height: 180,width: 180,color: Colors.cyanAccent,),
             Column(

               children: [
                 Row(
                   children: [
                     Container(height: 90,width: 90,color: Colors.cyanAccent,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 90,width: 90,color: Colors.cyanAccent,),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Container(height: 90,width: 90,color: Colors.cyanAccent,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 90,width: 90,color: Colors.cyanAccent,),
                     ),
                   ],
                 ),


           ],
         ),
         
         //    Row(
         //      children: [
         //        Container(
         //          height: 200,
         //          width: 200,
         //          decoration: BoxDecoration(
         //            image: DecorationImage(
         //              image: AssetImage("good/avn.jpg"),
         //              fit: BoxFit.fill
         //            ),
         //          ),
         //        ),
         //        Container(
         //          child: (
         //          Row(
         //           children: [
         //             Container(
         //               height: 100,
         //               width: 100,
         //               decoration: BoxDecoration(
         //                 image: DecorationImage(
         //                   image: AssetImage("good/avn.jpg"),
         //
         //
         //                 ),
         //               ),
         //             ),
         //             Container(
         //               child: (
         //               Column(
         //                 children: [
         //                   Container(
         //                     height: 100,
         //                     width: 100,
         //                     decoration: BoxDecoration(
         //                       image: DecorationImage(
         //                         image: AssetImage("good/avn.jpg"),
         //                       )
         //                     ),
         //                   ),
         //                   Row(
         //                     children: [
         //                       Container(
         //                         height: 100,
         //                         width: 100,
         //                         decoration: BoxDecoration(
         //                           image: DecorationImage(
         //                             image: AssetImage("good/avn.jpg"),
         //                           ),
         //                         ),
         //
         //                         ),
         //
         //                     ],
         //                   ),
         //
         //                 ],
         //               )
         //               ),
         //             ),
         //           ],
         //          )
         //        ),
         //
         //        ),
         // ),
         //         Padding(
         //           padding: EdgeInsets.all(8),
         //           child: Container(
         //             height: 250,
         //             width: 200,
         //             decoration:  BoxDecoration(
         //               border: Border.all(color: Colors.white10),
         //             ),
         //           ),
         //         ),
          ],
        ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("good/avn.jpg"),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("good/avn.jpg"),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset("good/avn.jpg"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            
            
            
            
    ],
    ),
      ),
    );
  }

}
