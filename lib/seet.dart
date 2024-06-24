import 'package:flutter/material.dart';
import 'package:untitled/logot.dart';
class setig extends StatefulWidget {
  const setig({super.key});

  @override
  State<setig> createState() => _setigState();
}

class _setigState extends State<setig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffabdbe3),
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white24,
          ),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "SEARCH",
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => out()),
                );
              },
              child: Column(
                children: [
                  Icon(Icons.search,color: Colors.white,),

                  SizedBox(height: 5,),

                  Text("Search",style: TextStyle(color: Colors.deepPurple,fontSize: 20,),)
                ],
              )),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.home,color: Colors.white,),

                  SizedBox(height: 5,),

                  Text("HOME",style: TextStyle(color: Colors.deepPurple,fontSize: 20,),)
                ],
              ),),
          SizedBox(height: 50,),
          Column(
            children: [
              Text('Prime Video',style: TextStyle(fontSize: 50,color: Colors.black,),),
              Center()
            ],
          ),
        ],
      ),
      
    );
  }
}
