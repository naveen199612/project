import 'package:flutter/material.dart';




class lsna extends StatefulWidget {
  final String? a;
  const lsna({super.key, this.a});

  @override
  State<lsna> createState() => _lsnaState();
}

class _lsnaState extends State<lsna> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Text(widget.a!);
  }
}
@override
Widget build(BuildContext context) {
  var widget;
  return Scaffold(
    appBar: AppBar(
      title: Text('RESULT'),
      centerTitle: true,
    ),
    body: Column(
      children: [
        SizedBox(height: 200,),
        Center(
          child: Text("THE VALUE IS: ${widget.a}"),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ],
    ),
  );
}
