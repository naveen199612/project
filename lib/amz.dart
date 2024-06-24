import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'amde.dart';

const List<String> list = <String>['1', '2', '3', '4'];


class por extends StatefulWidget {
  const por({super.key});

  @override
  State<por> createState() => _porState();
}

class _porState extends State<por> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("1"), value: "1",),
      DropdownMenuItem(child: Text("2"), value: "2",),
      DropdownMenuItem(child: Text("3"), value: "3",),
      DropdownMenuItem(child: Text("4"), value: "4",)

    ];
    return menuItems;
  }
  String selectedValue = "1";
  String dropdownValue = list.first;


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
                suffixIcon: Icon(Icons.camera),
                hintText: "SEARCH"
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("FOOTBALL"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Prokit football.. ", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("-42% \u20B9749.00 prime", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Image(image:AssetImage("good/imgw.png"))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  width: 900,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 300,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 06,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context ,a,b)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 900,
                            height: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("good/imgw.png"),
                                    fit: BoxFit.fill
                                ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 15,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Column(
                      children: [
                        Center(child: Text("35%",style: TextStyle(color: Colors.redAccent,fontSize: 10),)),
                        Center(child: Text("off",style: TextStyle(color: Colors.redAccent,fontSize: 15),))
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.share),
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 25,
                  child: Container(
                    height: 15,
                    width: 15,
                    child: Icon(Icons.favorite_border_outlined),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            DotsIndicator(
              dotsCount: 5,
              decorator: DotsDecorator(
              ),
            ),
            Text("800+ bought in past month",style: TextStyle(fontSize: 15),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Visit the Nivia Store",style: TextStyle(color: (Color(0xff2ED5DE))),),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("4.5"),
                  ),
                  RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 18,
                      itemCount: 5,
                      //itemPadding: EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context,_) => Icon(Icons.star,color: Colors.orangeAccent,),
                      onRatingUpdate: (rating){}
                  ),
                  SizedBox(width: 10),
                  Text("331",style: TextStyle(color: (Color(0xff2ED5DE))),)
                ],
              ),
            ),
            Row(
              children: [
                Text("-35%",style: TextStyle(color: Colors.red,fontSize: 40),),
                Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Text("\u20B9"),
                  ),
                ),
                Text("1,079",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.black
                    ),
                    text: "M.R.P.:\u20B91660",
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: RichText(
                text: TextSpan(
                  text: "EMI",
                  style: TextStyle(fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text:" starts at \u20B9 98.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text:" EMI Options",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Inclusive of all taxes",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Total\u20B9 1,079",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: RichText(text: TextSpan(
                  text: "Free Delivery",
                  style: TextStyle(color: Colors.cyan),
                  children: [
                    TextSpan(
                        text: "Sunday,14 April.Details",
                        style: TextStyle(color: Colors.black)
                    ),
                  ],
              )),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("Delivering to Coimbatore 641041-Update location",style: TextStyle(color: Colors.blue),),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: RichText(text: TextSpan(
                  text: "IN STTOCK",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)
              ),),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Container(
                height: 40,width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Qty",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: 250,
              child: Center(child: Text("Add to Cart")),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: 250,
              child: Center(child: Text("Buy Now"),),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.lock),
                ),
                Text("Secure Transaction",style: TextStyle(color: Colors.blueAccent),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("Ships From",style: TextStyle(color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 76),
                  child: Text("Amazon",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Sold By",style: TextStyle(color: Colors.black),),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Amazon Private limited",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
