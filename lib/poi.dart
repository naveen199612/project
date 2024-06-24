import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/newapp.dart';
class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {
  final _key = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool _jai = false;
  hi(){
    setState(() {
      _jai=email.text.isNotEmpty&& password.text.isNotEmpty==true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 300),
            TextFormField(
              onChanged: (val){
                hi();
              },
              controller: email,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: "ENTER EMAIL",
                  border: OutlineInputBorder()
                ),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (val){
                hi();
              },
              controller: password,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "ENTER PASSWORD",
                border: OutlineInputBorder()
              ) ,

            ),
            SizedBox(height: 20),
            Visibility(
              visible: _jai,
              child: ElevatedButton(onPressed: (){
                if(_key.currentState!.validate()){
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder:(context)=>newapp()),
                  );
                }
              },
                child: Text("OK")

              ),
            ),


          ],
        ),
      ),
    );
  }
}
