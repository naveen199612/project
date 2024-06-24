import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class kmnop extends StatefulWidget {
  const kmnop({super.key});


  @override
  State<kmnop> createState() => _kmnopState();
}

class _kmnopState extends State<kmnop> {

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems =[
      DropdownMenuItem(child: Text("1"),value: "1",),
      DropdownMenuItem(child: Text("2"),value: "2",),
      DropdownMenuItem(child: Text("3"),value: "3",),
      DropdownMenuItem(child: Text("4"),value: "4",)

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
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),child:
        TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.camera),
            hintText: "Search here",
          ),
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("B O U L T"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Boult Audio Z20 truly wireles...",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("It Will Be Sold On The New Year",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Image(image: AssetImage("assets/gym.png"))
                ],
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children:[
                Container(
                  width: 900,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        aspectRatio: 25/15,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
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
                            width: 700,
                            height: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/head.webp"),
                                    fit: BoxFit.fill
                                )
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
                        Center(child: Text("70%",style: TextStyle(color: Colors.white,fontSize: 10),)),
                        Center(child: Text("off",style: TextStyle(color: Colors.white,fontSize: 15),))
                      ],
                    ),
                    decoration:BoxDecoration(
                      color: Color(0xffDE2E32),
                      shape: BoxShape.circle,

                    ),
                  ),
                ),
                Positioned(
                  top: 20,
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
                  bottom: 20,
                  left: 20,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/heart.webp")
                        )
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
            Text("8k+ Bought On Last Month"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Visit The boAT Store",style: TextStyle(color: (Color(0xff2ED5DE))),),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("4.5"),
                  ),
                  RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 18,
                      itemCount: 5,
                      //itemPadding: EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context,_) => Icon(Icons.star,color: Colors.yellow,),
                      onRatingUpdate: (rating){}
                  ),
                  SizedBox(width: 10),
                  Text("15,345",style: TextStyle(color: (Color(0xff2ED5DE))),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("boAT Airpodes 121 Pro Tws Earbuds Signature Sound , Quad Mic ENx,Low Latency Mode For Gaming , 50H Playtime, IWP, IPX4, Battery Indcator Screen(Active Black"),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/seller.jpg")
                      )
                  ),
                ),
                SizedBox(width: 25),
                Text("Fast Selling Product",style: TextStyle(color: (Color(0xff2ED5DE)),fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 25),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: Icon(Icons.keyboard_arrow_right),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(6)
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(right: 235),
              child: Container(
                height: 35,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:Color(0xffdb4646),
                ),
                child: Center(child: Text("LIMITED TIME DEALS",style: TextStyle(color: Colors.white),)),
              ),
            ),
            Row(
              children: [
                Text("-14%",style: TextStyle(color: Colors.red,fontSize: 40),),
                Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Text("\u20B9"),
                  ),
                ),
                Text("7500",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                    text: "M.R.P.:\u20B915000"
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 65),
              child: RichText(
                text: TextSpan(
                    text: "EMI",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                          text:"from \u20B9 2,400.No cost EMI available.",
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
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text("Inclusive of all taxes",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 325),
              child: Text("Total\u20B9 7500",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: RichText(text: TextSpan(
                  text: "Free Delivery",
                  style: TextStyle(color: Colors.cyan),
                  children: [
                    TextSpan(
                        text: "24 - 26 MARCH",
                        style: TextStyle(color: Colors.black)
                    ),
                  ]
              )),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("Delivery To Mohamed - Coimbatore 639104",style: TextStyle(color: Colors.blueAccent),),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: RichText(text: TextSpan(
                  text: "IN STTOCK",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)
              )),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Container(
                height: 40,width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all()
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
            SizedBox(height: 15,),
            Container(
              height: 40,
              width: 350,
              child: Center(child: Text("Add to Cart")),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 40,
              width: 350,
              child: Center(child: Text("BUY NOW")),
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
                  padding: const EdgeInsets.only(left: 20),
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
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Amazon Private limited",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

