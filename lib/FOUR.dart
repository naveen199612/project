import 'package:flutter/material.dart';



class NetflixHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Image.asset(
              'good/netlogo.jpg', // Provide the path to your Netflix logo image
              width: 200,


            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trending Now',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Change this number based on your content
                itemBuilder: (context, index) {
                  // Generate your trending content items here
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      //height: 100,
                      // Placeholder color
                      child: Center(
                        child: Container(
                          decoration:  BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("good/ott1.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular on Netflix',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: 10, // Change this number based on your content
              itemBuilder: (context, index) {
                // Generate your popular content items here
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey, // Placeholder color
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://rukminim2.flixcart.com/image/850/1000/jnc2bgw0/poster/y/b/3/medium-hollywood-movie-wall-poster-the-dark-tower-hd-quality-original-imafayzxa7v4nh4s.jpeg?q=20&crop=false"),
                            fit: BoxFit.fill,
                          )
                        ),
                      )
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
