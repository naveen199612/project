import 'dart:convert';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:untitled/logot.dart';
import 'package:untitled/ottpageone.dart';


class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {

  bool isSwitched = false;

  static const List<String> list = <String>['Male', 'Female', 'Transgender'];

  String dropdownValue = list.first;

  static const List<String>

  list1 = <String>['Select your city',
    'coimbatore'];

  String dropdownValue1 = list1.first;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  Uint8List? _image;

  void initState() {
    super.initState();
    loadImageFromPreferences();  }

  Future<void> loadImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? base64String = prefs.getString('saved_image');
    if (base64String != null) {
      final Uint8List bytes = base64Decode(base64String);
      setState(() {
        _image = bytes;
      });
    }
  }

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
                      getImageFromGallery();
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
                      getImageFromCamera();
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

  Future<void> getImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage
      (source: ImageSource.gallery);
    if (pickedFile != null) {
      final Uint8List imageBytes = await pickedFile.readAsBytes();
      await saveImageToPreferences(imageBytes); // Save image to SharedPreferences
      setState(() {
        _image = imageBytes;
      });
    }
  }


  Future<void> getImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final Uint8List imageBytes = await pickedFile.readAsBytes();
      await saveImageToPreferences(imageBytes); // Save image to SharedPreferences
      setState(() {
        _image = imageBytes;
      });
    }
  }

  Future<void> saveImageToPreferences(Uint8List imageBytes) async {
    final String base64String = base64Encode(imageBytes);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_image', base64String);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),onPressed: () {
          setState(() {
            Navigator.
            push(context,
              MaterialPageRoute(builder: (context) => secpg()),);
          });
        },),
        title: Text(" My Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                Navigator.
                push(context,
                  MaterialPageRoute(builder: (context) =>
                      out()),);
              });
            }, child: Text("Save",)),
          ),
        ],
      ),
      body:
      Center(
        child:
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: SingleChildScrollView(
            child: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:
                  Stack(
                    children: [
                      _image !=null ?
                      CircleAvatar(
                        radius: 150,
                        backgroundImage:
                        MemoryImage(_image!),
                      ):
                      CircleAvatar(
                        radius: 150,
                        backgroundImage: _image == null ?
                        NetworkImage("https://static.vecteezy.com/system/resources/previews/019/900/322/non_2x/happy-young-cute-illustration-face-profile-png.png")
                        as ImageProvider<Object>?
                            : MemoryImage(_image!),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 2,
                        child: IconButton(
                          onPressed: () {
                            showImagePickerOption(context);
                          },
                          icon: Icon(Icons.add_a_photo,size: 30,color: Colors.black,),
                        ),
                      ),

                    ],
                  ),
                ),



                SizedBox(height: 30,),

                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 350,
                            child: TextFormField(
                              keyboardType: TextInputType.name,style: TextStyle(color: Colors.black),
                              validator: (int){
                                if(int==null   || int.isEmpty){
                                  return "Enter Valid Name";
                                }
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  icon: Icon(Icons.person),
                                  hintText: "Enter Your Name",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Divider(color: Colors.black,
                  height: 30,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,),

                SizedBox(height: 30,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 350,
                            child: TextFormField(
                              keyboardType: TextInputType.name,style: TextStyle(color: Colors.black),
                              validator: (int){
                                if(int==null   || int.isEmpty){
                                  return "Enter Valid phone number";
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.person),
                                hintText: "Enter Your Number",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Divider(color: Colors.black,
                  height: 30,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,),

                SizedBox(height: 10,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.add,color: Colors.black,),
                        ),
                        Text("Gender", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
                        // Switch(
                        //       value: isSwitched,
                        //       onChanged: _toggleSwitch,
                        //       activeTrackColor: Colors.lightGreenAccent,
                        //       activeColor: Colors.green,
                        //       ),

                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value,child: Text(value));
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Divider(color: Colors.black,
                  height: 30,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,),

                SizedBox(height: 30,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.add_location,color: Colors.black,),
                        ),
                        Text("Location", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
                        Padding(
                          padding: const EdgeInsets.only(left: 70.0),
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            // icon: const Icon(Icons.arrow_downward),
                            // elevation: 25,
                            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue1 = value!;
                              });
                            },
                            items: list1.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value,child: Text(value));
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Divider(color: Colors.black,
                  height: 30,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,),

                SizedBox(height: 150,),

                Text(" Amazon Prime", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.lightBlue),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ott6() {}
}
