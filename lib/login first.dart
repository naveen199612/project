import 'package:flutter/material.dart';
import 'package:untitled/firebase.dart';
import 'package:untitled/map.dart';

import 'authentication.dart';
import 'gop.dart';


class ott1 extends StatefulWidget {
  const ott1({super.key});

  @override
  State<ott1> createState() => _ott1State();
}

class _ott1State extends State<ott1> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  final naja = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Amazon_Prime_Video_logo.svg/2560px-Amazon_Prime_Video_logo.svg.png"),
        ),
        title: Center(child: Text("Login Page")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      body: Form(
        key: naja,
        child: Column(
          children: [

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: two,
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: "Enter Your Name"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: one,
                  validator: (input){
                    if(input==null  ||  input.isEmpty)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter Your Password"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  ElevatedButton(onPressed: ()async{

                    final message = await AuthService().login(
                        email: two.text,
                        password: one.text);

                    if(naja.currentState!.validate()){
                      if (message!.contains("Success")){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => botm()),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Successfully Logged In"))
                        );
                      }
                      else { ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Email Does Not Exist"))
                      );
                      }


                    }
                  }, child: Text("Login")),
                  SizedBox(width: 25,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => botm ()),
                    );
                  }, child: Text("Sign up")),

                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}