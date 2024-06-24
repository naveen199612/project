import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/keywords.dart';
import 'package:untitled/linavi.dart';
import 'list.dart';

class newlist extends StatefulWidget {
  const newlist({super.key});

  @override
  State<newlist> createState() => _newlistState();
}

class _newlistState extends State<newlist> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final List listt = [];
 final TextEditingController tree =TextEditingController();
  final TextEditingController treee =TextEditingController();
  final TextEditingController treev =TextEditingController();


  void changePage(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => jsw(
          abd: data, Listnew: null,
        ),
      ),
    ).then((editableData) {
      if (editableData != null) {
        setState(() {
          listt[listt.indexWhere((element) => element == data)] = editableData;
        });
      }
    });
  }

  void deleteitem(var i) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => jsw(abd: i, Listnew: null,),
      ),
    ).then((deleteableData) {
      if (deleteableData == null) {
        setState(() {
          listt.removeWhere((index) => index == i);
          listt.removeWhere((element) {
            return element.key == listt[i].key;
          });
          listt.removeAt(i);
        });
      }
    });
  }
  void edittem(var i) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => jsw(abd: i, Listnew: null,),
      ),
    ).then((editableData) {
      if (editableData == abd) {
        setState(() {
          listt.removeWhere((index) => index == i);
          listt.removeWhere((element) {
            return element.key == listt[i].key;
          });
          listt.removeAt(i);
        });
      }
    });
  }


  void addd() {
    String con1 = name.text;
    String con2 = email.text;
    String con3 = password.text;
    setState(() {
      listt.add('$con1\n$con2\n$con3');
      name.clear();
      email.clear();
      password.clear();
    });
  }

  void qwe(String name)  {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => jsw(Listnew: null,

            )));
  }
  void adddl() {
    String con1 = tree.text;
    String con2 = treee.text;
    String con3 = treev.text;
    setState(() {
      listt.add('$con1\n$con2\n$con3');
      tree.clear();
      treee.clear();
      treev.clear();
    });
  }void rewq(String name) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => jsw(Listnew: null,

            )));
  }

  //List<list2> all = List.generate(n.length, (index) => [n.[index],e.[index],p.[index]]);
  // List<List<int>> combinedList = List.generate(.length, (index) {
  //   return [list1[index], list2[index], list3[index]];
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  addd();
                });
              },
              child: Text("ADD")),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 280,
            width: 300,
            decoration: BoxDecoration(border: Border.all()),
            child: ListView.builder(
              itemCount: listt.length,
              itemBuilder: (context, index) =>
                  GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => jsw(
                            abd: listt[index], Listnew: null,
                          )));
                },
                child: Card(
                  elevation: 20,
                  child: Column(
                    children: [
                      Text(listt[index]),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  listt.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete)),
                          Row(
                            children: [
                              IconButton(onPressed: ()
                              {
                                setState(() {
                                  listt.removeAt(index);
                                });
                              },icon: Icon(Icons.edit),
                              ),
                            ],
                          ),
                          IconButton(onPressed:(){
                            setState(() {
                              onPressed: () => edittem(index);
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context)=>AlertDialog(
                                  title: Text("edit"),
                                  actions:<Widget> [
                                    TextFormField(
                                      controller: tree,

                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),

                                    ),
                                TextFormField(
                                  controller: treee,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),),
                                TextFormField(
                                  controller: treev,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),),
                                    ElevatedButton(onPressed: ()
                                    {
                                      setState(() {
                                        listt[index]=tree.text;
                                        listt[index]=treee.text;
                                        listt[index]=treev.text;

                                        tree.clear();
                                        treee.clear();
                                        treev.clear();
                                        
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

class Listnew {
}