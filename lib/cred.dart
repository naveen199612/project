import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/linavi.dart';

class list5 extends StatefulWidget {
  const list5({Key? key}) : super(key: key);

  @override
  State<list5> createState() => _list5State();
}

class _list5State extends State<list5> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final List<String> listt = [];
  final TextEditingController tree = TextEditingController();
  final TextEditingController treee = TextEditingController();
  final TextEditingController treev = TextEditingController();

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

  void editItem(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
              // initialValue: name.text,
                controller: tree,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
              ),
              TextFormField(
                controller: treee,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextFormField(
                controller: treev,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  listt[index] = '${tree.text}\n${treee.text}\n${treev.text}';
                   tree.clear();
                  treee.clear();
                  treev.clear();
                  Navigator.of(context).pop();
                });
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

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
                  hintText: 'Name',
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
                  hintText: 'Email',
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
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: addd,
            child: Text("ADD"),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: Expanded(
              child: ListView.builder(
                itemCount: listt.length,
                itemBuilder: (context, index) =>
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => jsw(
                                  abd: listt[index], Listnew: null,
                                )));
                      },

                      child: Card(
                                        elevation: 20,
                                        child: ListTile(
                      title: Text(listt[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                listt.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () => editItem(index),
                            icon: Icon(Icons.edit),
                          ),
                        ],
                      ),),
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
