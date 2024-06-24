import 'package:flutter/material.dart';
import 'package:untitled/map.dart';
import 'authentication.dart';


class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {

  TextEditingController a =TextEditingController();
  TextEditingController b =TextEditingController();

  final qwe = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: qwe,
        child: Column(
          children: [

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: a,
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
                  controller: b,
                  validator: (input){
                    if(input==null  ||  input.isEmpty || input.length!=8)
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

            ElevatedButton(onPressed: () async {
              final message = await AuthService().registration(
                  email: a.text,
                  password: b.text);

              if(qwe.currentState!.validate()){
                if(message!.contains('Success')){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => botm ()),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Account Created"))
                  );
                }  else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("This Email Already Exist"))
                  );
                }
              }
            }, child: Text("login"))
          ],
        ),
      ),
    );
  }
}