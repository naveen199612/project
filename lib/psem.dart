

import 'package:flutter/material.dart';

import 'package:untitled/list2.dart';
class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();

}

class _oneState extends State<one> {
  TextEditingController Name= TextEditingController();
  TextEditingController Email= TextEditingController();
  TextEditingController Password=TextEditingController();

  final Listnew = [];




  void adds(){
    String con1 = Name.text;
    String con2 = Email.text;
    String con3 = Password.text;
    setState(() {
      Listnew.add('$con1,$con2,$con3');
      Name.clear();
      Email.clear();
      Password.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" LIST "),
        centerTitle: true,
      ),
      body: Column(
          children: [SizedBox(height: 50),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                  controller: Name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name"
                  ),
                ),
              ),),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                  controller:Email ,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email"
                  ),
                ),
              ),),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 200,
                child: TextFormField(
                  controller:Password ,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"
                  ),
                ),
              ),),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  adds();
                },
                child: Text("ok")),
            SizedBox(height: 40),
            Container(
              height: 300,width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: ListView.builder(
                  itemCount: Listnew.length,
                  itemBuilder: (context ,index )=>Card(
                    elevation: 80,
                    child: Column(
                      children: [
                        Text(Listnew[index],
                          style: TextStyle(
                              fontSize:30,
                              fontWeight: FontWeight.bold ),
                        ),
                        Container(
                          width: 80,
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: (){
                                  setState(() {
                                    Listnew.removeAt(index);
                                  });
                                }
                              ),
                              IconButton(onPressed:(){
                                setState(() {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context)=>AlertDialog(
                                      title: Text("edit"),
                                      actions:<Widget> [
                                        TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                        ), ElevatedButton(onPressed: ()
                                        {
                                          setState(() {
                                            Listnew[index] = addd.length;
                                            Listnew.clear();
                                            Navigator.of(context).pop();
                                          });
                                        },
                                            child:
                                            Text("Edit",style: TextStyle(fontWeight: FontWeight.bold))),
                                      ],
                                    ),
                                  );
                                });
                              }, icon: Icon(Icons.edit),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
            ),
          ]
      ),
    );
  }
}