

import 'package:flutter/material.dart';

import 'package:untitled/new.dart';
class lie extends StatefulWidget {
  const lie({super.key});

  @override
  State<lie> createState() => _lieState();
}
TextEditingController a1 = TextEditingController();
TextEditingController b1 = TextEditingController();
List a=[];
List b=[];
TextEditingController navi = TextEditingController();

class _lieState extends State<lie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(height: 100,),

            Center(
              child: Container(
                width: 250,
                child: TextFormField(
                  controller: a1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
               ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 150,
                child: TextFormField(
                  controller: b1,decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed:()
            {
              setState(() {
                a.add(a1.text);
                a1.clear();
              });
            }, child: Text("OKAY",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 50,),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all()
              ),
             child: ListView.builder(
               itemCount: a.length,
               itemBuilder: (context , index)=> Card(
                 elevation: 30,
                   child: ListTile(
                     title: Text(a [index],
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15),
                     ),
                     trailing: Container(
                     width: 95,
                       child: Row(
                         children: [
                           IconButton(
                             icon: Icon(Icons.delete),
                             onPressed: ()
                             {
                               setState(() {
                                 a.removeAt(index);
                               });
                             },
                           ),
                           IconButton(onPressed: (){
                             setState(() {
                               showDialog<String>(
                                 context: context,
                                 builder: (BuildContext context) => AlertDialog(
                                   title: Text("EDIT"),
                                   actions: <Widget>[
                                     TextFormField(
                                       controller: a1 ,
                                       keyboardType: TextInputType.number,
                                       decoration: InputDecoration(
                                         border: OutlineInputBorder(),
                                       ),
                                     ),
                                     ElevatedButton(onPressed: ()
                                     {
                                       setState(() {
                                         a[index]=a1.text;
                                         a.clear();
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
                     onTap:()
                     {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => raw(abd: a[index].toString(), a: null, a1: null,  ),),
                       );
                     },
               ),
             ),
            ),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  ElevatedButton(onPressed:(){
                    a.sort((a,b)=>int.parse(b).compareTo(int.parse(a)));
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Center (child: Text("MAX"),),
                        content: Container(
                          height: 100,
                          child: Text("MAXI NO IS : ${a.first}"),
                        ),
                        actions: [
                          TextButton(onPressed:()=> Navigator.pop(context , "ok"),
                          child: const Text("OK"),
        
                          ),
                        ],
                      ),
                    );
                  }, child: Text("maxi"),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        ElevatedButton(onPressed:(){
                          a.sort((a,b)=>int.parse(b).compareTo(int.parse(a)));
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Center (child: Text("Mini"),),
                              content: Container(
                                height: 100,
                                child: Text("MinI NO IS : ${a.last}"),
                              ),
                              actions: [
                                TextButton(onPressed:()=> Navigator.pop(context , "ok"),
                                  child: const Text("OK"),
                                ),
                              ],
                            ),
                          );
                        }, child: Text("mini"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          a.sort((a,b)=>int.parse(b).compareTo(int.parse(a)));
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Center(child: Text('Descending Order')),
                                content: Container(
                                  height: 150,
                                  child: Text("The Descending Order is : $a"),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'DONE'),
                                    child: const Text('DONE'),
                                  ),
                                ],
                              )
                          );
                        }, child: Text("Descending")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ElevatedButton(onPressed: (){
                    a.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(child: Text('Ascending Order')),
                          content: Container(
                            height: 150,
                            child: Text("The Ascending Order is : $a"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'DONE'),
                              child: const Text('DONE'),
                            ),
                          ],
                        )
                    );
                  }, child: Text("AScending")),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  ElevatedButton(onPressed: (){
                    a = a.where((element) => int.parse(element) > 5) . toList();
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(child: Text('Greater than 5')),
                          content: Container(
                            height: 150,
                            child: Text(">5 : $a"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        )
                    );
                  }, child: Text(">5")),
                  SizedBox(width: 85,),
                  ElevatedButton(onPressed: (){
                    a.sort((a, b) => int.parse(b).compareTo(int.parse(a)));
                    a = a.where((element) => int.parse(element) < 5).toList();
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(child: Text('Lesser Than 5')),
                          content: Container(
                            height: 150,
                            child: Text("<5 : $a"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        )
                    );
                  }, child: Text("<5"))
                ],
              ),
            ),
            ],
        ),
      ),
    );
  }
}



