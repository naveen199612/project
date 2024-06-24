import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/ottpageone.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/10,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      ();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image,size: 50,color: Colors.blueAccent),
                          Text("Files",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      ();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.camera_alt, size: 50,color: Colors.blueAccent),
                          Text( "Camera",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black,),
          onPressed: () {
            setState(() {
              Navigator.
              push(context,
                MaterialPageRoute(builder: (context) => secpg()),);
            });
          },),
        title: Text(" My Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: ElevatedButton(onPressed: () {
              setState(() {
                Navigator.
                push(context,
                  MaterialPageRoute(builder: (context) =>
                      secpg()),);
              });
            }, child: Text("Save")),
          ),
        ],
      ),
      body: SizedBox( height: 100,
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/019/900/322/non_2x/happy-young-cute-illustration-face-profile-png.png"),
                    ),SizedBox(height: 10,
                      child: Positioned(
                          child: IconButton(
                            onPressed: () {
                              showImagePickerOption(context);
                            }, icon: Icon(Icons.camera,size: 10,color: Colors.black,),
                          ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(25),
                              child: Icon(Icons.person_2_outlined,color: Colors.black,),
                            ),
                            Text("Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                            Padding(
                                padding: const EdgeInsets.only(left: 60),
                              child: Text("NAV",style: TextStyle(color: Colors.black),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                              child: Icon(Icons.phone_android,color: Colors.black,),
                            ),
                            Text("Phone number",style: TextStyle(),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}