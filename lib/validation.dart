import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:untitled/amz.dart';

class amaz extends StatefulWidget {
  const amaz({super.key});

  @override
  State<amaz> createState() => _amazState();
}

class _amazState extends State<amaz> {
  List a=[
    "good/aarfh.jpg",
    "good/aram.jpg",
    "good/doph.jpg",
    "good/new.jpg",
    "good/jai.jpg",
    "good/u1.jpg",
    "good/aram.jpg",
  ];
  List b=[
    "good/aarfh.jpg",
    "good/aram.jpg",
    "good/doph.jpg",
    "good/new.jpg",
    "good/jai.jpg",
    "good/u1.jpg",
    "good/aram.jpg",
  ];

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
      body:
      SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ListTile(
                  tileColor: Colors.blueAccent,
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Coimbatore,Tamil Nadu,India"),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int index)



                    {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => por()),);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 85,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: AssetImage(a[index]),fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              Text("COM")
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              CarouselSlider.builder(

                  options: CarouselOptions(
                    height: 200,
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
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: 5,
                  itemBuilder: (BuildContext con,index,a)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => por()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 450,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            image: DecorationImage(
                                image: AssetImage(b[index]),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: 5,
                  decorator: DotsDecorator(
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext a,b)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage("good/doph.jpg"),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: Text("Products For You",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 300,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 4.0,
                          childAspectRatio: 1/1.5,
                          crossAxisCount: 2,
                        ),
                        itemCount: 6,
                        itemBuilder: (BuildContext cont,int index)
                        {
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => por()),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage(b[index]),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      color: Colors.black,
                                    ),
                                    child: Padding(
                                      padding: const  EdgeInsets.all(1.0),
                                      child: Text("10%Off limited time deal",
                                        style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );

                        }
                    ),
                  ),
                ],
              ),
            ]
        ),

      ),
    );
  }
}



