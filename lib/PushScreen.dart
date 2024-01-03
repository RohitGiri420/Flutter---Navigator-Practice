import 'package:flutter/material.dart';

class PushScreen extends StatefulWidget {
  String txt;
  PushScreen({super.key,required this.txt});

  @override
  State<PushScreen> createState() => _PushScreenState();
}

class _PushScreenState extends State<PushScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children:[

            Padding(
              padding: const EdgeInsets.only(left: 50,top: 50),
              child: Card(
                elevation: 10,
                child: Container(
                height: 300,width: 200,
                color: Colors.red,
                          ),
              ),
            ),

            Card(
              elevation: 10,
              child: Container(
                height: 200,width: 220,
                color: Colors.green ,
                child: Center(child: Text("${widget.txt}")),
              ),
            ),
            

          ]
        ),
      ),

      //Center(child: Text("${widget.txt}")),
    );
  }
}
