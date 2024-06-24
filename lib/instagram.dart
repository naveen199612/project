import 'package:flutter/material.dart';
class gram extends StatefulWidget {
  const gram({super.key});

  @override
  State<gram> createState() => _gramState();
}

class _gramState extends State<gram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.lock),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('re_claim_'),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.arrow_drop_down),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image(image: AssetImage("good/logoth.jpg"),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.add_box_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.menu),
              ),
            ],
          ),
         body: NestedScrollView(
           headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled)
           {
             return[
               SliverToBoxAdapter(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Stack(
                       children: [
                         Container(
                           height: 100,
                           width: 2501,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(90),
                                   image: DecorationImage(
                                     image: AssetImage("good/inpof.jpg"),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                               ),
                               SizedBox(width:10 ),
                               Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top:50),
                                     child: Text("30",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ),
                                   Text("post",style: TextStyle(fontWeight: FontWeight.bold),),
                                 ],
                               ),
                               SizedBox(width:10,),
                               Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 50),
                                     child: Text("265",style: TextStyle(fontWeight: FontWeight.bold),),
                                   ),
                                   Text("follwers"),
                                 ],
                               ),
                               SizedBox(width: 10),
                               Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 50),
                                     child: Text("750",style: TextStyle(fontWeight: FontWeight.bold),),
                                   ),
                                   Text("following")
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     Padding(
                       padding:  const EdgeInsets.all(8.0),
                       child: Container(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("re_calim_your_life",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                             Text("Life is one time offer used it we'll..",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                           ],
                         ),
                       ),
                     ),
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                   height: 30,
                                   width: 150,
                                   child: Center(child: Text("Edit profile"),),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     color: Colors.grey,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         SizedBox(width: 20,),
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 height: 30,
                                 width: 150,
                                 child: Center(child: Text("Share profile"),),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.grey,
                                 ),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 height: 30,
                                 width: 50,
                                 child: Icon(Icons.person_add),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     Container(
                       height: 120,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: 6, itemBuilder: (BuildContext context, int index) {
                           return Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [
                                 Container(
                                   height:50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(90),
                                     image: DecorationImage(
                                       image: AssetImage("good/sto.jpg"),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                                 Text("Topslip"),
                               ],
                             ),
                           );
                       },
                       ),
                     ),
                   ],
                 ),

               ),
               SliverAppBar(
                 bottom:  TabBar(
                   tabs: [
                     Icon(Icons.apps),
                     Icon(Icons.ondemand_video_sharp),
                     Icon(Icons.account_box),
                   ],
                 ),
               ),
             ];
           }, body: TabBarView(
             children: [
               Container(
                 height: 200,
                 child: GridView.builder(
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     mainAxisSpacing: 3,
                     crossAxisSpacing: 3,
                     mainAxisExtent: 130,
                   ),
                   itemCount: 25,
                   itemBuilder: (BuildContext , index)
                     {
                       return Container(
                         height: 60,
                         width: 60,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage("good/doph.jpg"),
                             fit: BoxFit.fill,
                           ),
                         ),
                       );
                     }
                 ),
               ),
               GridView.builder(
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 3,
                       mainAxisSpacing: 3,
                       crossAxisSpacing: 3,
                       mainAxisExtent: 130
                   ),
                   itemCount: 22,
                   itemBuilder: (BuildContext, index)
                   {
                     return Container(
                       height:80,
                       width:80,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage("good/u1.jpg"),
                             fit: BoxFit.fill
                         ),
                       ),
                     );
                   }
               ),
               GridView.builder(
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 3,
                       mainAxisSpacing: 3,
                       crossAxisSpacing: 3,
                       mainAxisExtent: 130
                   ),
                   itemCount: 22,
                   itemBuilder: (BuildContext, index)
                   {
                     return Container(
                       height:80,
                       width:80,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage("good/new.jpg"),
                             fit: BoxFit.fill
                         ),
                       ),
                     );
                   }
               ),

             ],
           ),
         ),
        ),
      ),
    );
  }
}
