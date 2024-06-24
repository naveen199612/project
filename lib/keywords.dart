import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class abd extends StatefulWidget {
  const abd({super.key});

  @override
  State<abd> createState() => _abdState();
}

class _abdState extends State<abd> {
  bool _show=false;
  final ctrl = TextEditingController();
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();
  a() {
    setState(() {
      ctrl.text.isNotEmpty ? _show = true : _show = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        actions: [
          Icon(Icons.menu),
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            controller: ctrl,
            onChanged: (qw)
              {
                setState(() {
                  ctrl.text.isNotEmpty?_show=true:_show=false;
                });
              }
          ),
          Visibility(
            visible: _show,
            child: ElevatedButton(onPressed: (){},
             child: Text("LOGIN") ,



            ),
          ),
        ],
      ),
    );
  }
}



class qsc extends StatefulWidget {
  const qsc({super.key});

  @override
  State<qsc> createState() => _qscState();
}

class _qscState extends State<qsc> {

  bool _show = false;

  final ctrl = TextEditingController();
  final ctrl2 = TextEditingController();

  q()
  {
    setState(() {
      ctrl.text.isNotEmpty && ctrl2.text.isNotEmpty ? _show = true : _show = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: ctrl,
            onChanged: (as)
            {
              q();

            },
          ),
          TextFormField(controller: ctrl2,
          onChanged: (as)
            {
              q();
            },),
          Visibility(
            visible: _show,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("ok")),
          ),
        ],
      ),
    );
  }
}
