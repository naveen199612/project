import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/navigation.dart';
import 'package:untitled/viedoplayer.dart';
class secpg extends StatefulWidget {
  const secpg({super.key});

  @override
  State<secpg> createState() => _secpgState();
}

class _secpgState extends State<secpg> {
  List a =[
    "https://upload.wikimedia.org/wikipedia/en/9/94/ForeverMyGirlposter.jpg",
    "data:image/jpeg;base64,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",

    "data:image/jpeg;base64,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",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rottentomatoes.com%2Fbrowse%2Fmovies_at_home%2Fsort%3Apopular&psig=AOvVaw3-G1MQ5X81AsFgVvRnihbW&ust=1714804682329000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOiggLjv8IUDFQAAAAAdAAAAABAE",
     "https://assets-prd.ignimgs.com/2024/01/24/upcomingvideogamemoviestvshows-blogroll-1706138962779.jpg",

  ];
  List b= [
    "https://marketplace.canva.com/EAFTl0ixW_k/1/0/1131w/canva-black-white-minimal-alone-movie-poster-YZ-0GJ13Nc8.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeWH9sdw9L20R4b6xzQ6Z0wl0vmYc5hP-4qQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hFw7vjvSp7DkXDByWapMkbs0jNkELjNPCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGXQujvEJ9qQai3pUoAFnmcrK_R4JmTg4UgQ&usqp=CAU",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration:BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("good/secpg1.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 80 ),
              child: Text(
                "AMAZON ORIGIAL \n misica",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              height: 80,
              width: 250,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.black87,
                    ),
                  ),
                  Text("Watch with a free prime trial",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
                color: Colors.white,
                height: 80,
                width: 400,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Watch With Prime \n Start Your 30 - Day Trial",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),),),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vide ()),
                );
              },
              child: Container(
                height: 100,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(height: 10,),
                  TextButton(
                    onPressed: (){},
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.watch_later,color: Colors.orange,),
                          SizedBox(height: 10,),
                          Text("Watchlist",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                  },
                    child: Column(
                      children: [
                        Icon(Icons.thumb_up_off_alt_outlined,color: Colors.orange,),
                        SizedBox(height: 10,),
                        Text("Like",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed:(){},
                  child: Column(
                    children: [
                      Icon(Icons.thumb_down_alt_outlined,color: Colors.orange,),
                      SizedBox(height: 10,),
                      Text("Not for me",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){},
                    child: Column(
                      children: [
                        Icon(Icons.share,color: Colors.orange,),
                        SizedBox(height: 10,),
                        Text("Share",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    Navigator.push(context,   MaterialPageRoute(builder: (context) => vide ()),
                    );
                  },

                    child: Column(
                      children: [
                        Icon(Icons.play_circle_fill,color: Colors.orange,),
                        SizedBox(height: 10,),
                        Text("Play",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),

                  ),
                ],
                ),
              ),
            ),
            Text("Musica,a coming-of-agr romantic comdey \n by writer,direactor and star,Rudy MANCUSO taken us a fun,musically driven journey.. \n Comedy Romance",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(" IMDb 6.5",style: TextStyle(color: Colors.black),),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.only(right: 300),
              child: Text("2024 91 min"),
            ),
            SizedBox(height: 10,),
           Padding(
               padding: const EdgeInsets.only(right: 300),
             child: Text("Languages",style: TextStyle(fontWeight: FontWeight.bold),),
           ),
            SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.only(right: 300),
              child: Text("Audio14 Subtitle 35",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(a[index]),fit: BoxFit.fill)
                            ),
                            //child: Image.network(b[index],fit: f,),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(right: 190),
                            child: Text("Movies",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.black),),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: b.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(b[index]),fit: BoxFit.fill)
                            ),
                            //child: Image.network(b[index],fit: f,),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(right: 190),
                            child: Text("Movies",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.black),),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
      );

  }


}




