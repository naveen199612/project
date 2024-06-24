import 'package:flutter/material.dart';


class spot extends StatefulWidget {
  const spot({Key? key}) : super(key: key);

  State<spot> createState() => _SpotifyState();
}

class _SpotifyState extends State<spot> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  bool na = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          na = scrollController.offset > 0;
          imageSize = initialSize - scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                  backgroundColor: Colors.black,
                  floating: true,
                  pinned: true,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () { },
                  ),
                  title: na ? Text("A.R Rahmam", style: TextStyle(color: Colors.white)) : null,
              ),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0),
                              Colors.black.withOpacity(1),
                            ])),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50,top: 50),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            blurRadius: 85,
                                            spreadRadius: 100)
                                      ],
                                  ),
                                  child: Image(
                                    image: AssetImage("good/aram.jpg"),
                                    width: 400,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("The Goat life-Aadujeevitham",style: TextStyle(color: Colors.white),),
                                      Text("A.R.Rahman",style: TextStyle(color: Colors.white),),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image(
                                            image: AssetImage('good/jai.jpg'),
                                            width: 50,
                                            height: 50,
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            'Made For You',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'EP.2024',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.add_circle,size: 25.5, color: Colors.white,),
                                          SizedBox(width: 10,),
                                          Icon(Icons.arrow_circle_down,size: 25, color: Colors.white,),
                                          SizedBox(width: 10,),
                                          Icon(Icons.more_vert,size: 25, color: Colors.white,),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: Icon(Icons.shuffle,size: 25, color: Colors.green,),
                                          ),
                                          Icon(Icons.play_circle,size: 50, color: Colors.green,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index){
                  return Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: ListTile(
                      leading: Image(image: AssetImage("good/jai.jpg"),),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('The Train of Dreams $index', style: TextStyle(color: Colors.white)),
                              Text('A.R.Rahman $index', style: TextStyle(color: Colors.white.withOpacity(0.4),fontSize: 13)),
                            ],
                          ),
                          Icon(Icons.more_vert,color: Colors.white,),
                        ],
                      ),
                    ),
                  );
                },childCount: 50,

              ),
              ),
            ]
          ),
        ),

      ),
    );
  }


}