import 'dart:math';

import 'package:flutter/material.dart';
class calu extends StatefulWidget {
  const calu({super.key});

  @override
  State<calu> createState() => _caluState();
}

class _caluState extends State<calu> {
TextEditingController wer = TextEditingController();
  String num1="";
  String num2="";
  String oper="";
  bool clk=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,width: 300,),
          Container(
            height:50 ,
            width: 350,
            child: TextFormField(
              controller: wer,
              style: TextStyle(fontSize: 25,color: Colors.pink,fontWeight: FontWeight.bold),

            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      num1="";
                      num2="";
                      oper="";
                      clk=false;
                      wer .text="";
                    },

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("AC",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="X";
                      oper="%";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("X",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="%";
                      oper="%";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("%",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="/";
                      oper="/";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("/",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: () {
                      double a = double.parse(wer.text);

                      if(a.isNegative)
                      {
                        wer.text=a.abs().toString();
                      }
                      else{
                        wer.text=(a*-1).toString();
                      }

                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("+/-",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="√";
                      oper="√";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("√",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="^";
                      oper="^";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("^",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="^2";
                      oper="^2";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("^2",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk)
                        {
                          num2 +="7";
                          wer.text = num2;
                        }
                        else
                        {
                          num1 +="7";
                          wer.text=num1;

                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("7",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(clk){
                            num2 +="8";
                            wer.text=num2;
                          }
                          else{
                            num1 +="8";
                            wer.text=num1;
                          }
                        });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2+="9";
                          wer.text=num2;
                        }
                        else{
                          num1+="9";
                          wer.text=num1 ;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("9",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer.text="*";
                      oper="*";
                      clk=true;

                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2+="4";
                          wer.text=num2;
                        }
                        else{
                          num1+="4";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("4",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2+="5";
                          wer.text=num2;
                        }
                        else{
                          num1+="5";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2+="6";
                          wer.text=num2;
                        }
                        else{
                          num1+="6";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer .text="-";
                      oper="-";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2 +="1";
                         wer.text=num2;
                        }
                        else{
                          num1 +="1";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2 +="2";
                          wer.text=num2;
                        }
                        else{
                          num1 +="2";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2 +="3";
                          wer.text=num2;
                        }
                        else{
                          num1 +="3";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      wer.text +="+";
                      oper="+";
                      clk=true;
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2="*";
                          wer.text=num2;
                        }
                        else{
                          num1="*";
                          wer.text=num1;
                        }
                      });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2 +="0";
                          wer.text=num2;
                        }
                        else{
                          num1 +="0";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(clk){
                          num2=".";
                          wer.text=num2;
                        }
                        else{
                          num1 +=".";
                          wer.text=num1;
                        }
                      });
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      ), child: Text(".",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.white60),),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:50,
                    width: 80,
                    child: ElevatedButton(onPressed: (){
                      double a=double.parse(num1);
                      double b=double.parse(num2);
                      double c=0;
                      print(oper);
                      if(oper=="+"){
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a+b;
                        wer.text= res.toString();
                      }
                       if(oper=="-"){
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a-b;
                        wer.text= res.toString();
                      }
                       if(oper=="*"){
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a*b;
                        wer.text= res.toString();
                      }
                      if (oper=="/"){
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a/b;
                        wer.text= res.toString();
                      }
                        if(oper=="%"){
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a/100*b;
                        wer.text= res.toString();
                      }
                      if(oper == "+/-")
                      {
                        double a = double.parse(num1);

                        double res = -a ;

                        wer.text = res.toString();
                      }

                        else if(oper=="√"){
                          double a=double.parse(num1);
                          num c= pow (a,1/2);
                          wer.text= c.toString();
                        }



                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ), child: Text("=",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ,color: Colors.white60),),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
