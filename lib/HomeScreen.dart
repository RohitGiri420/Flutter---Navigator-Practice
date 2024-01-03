import 'package:flutter/material.dart';
import 'package:navigation_practice/PushScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    label: Text("Enter Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),

              ),
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  PushScreen(
                      txt: "Hii, ${textEditingController.text.toString()}. How are you"),));
            }, child: Text(
                "Submit"
            )),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PushScreen(txt: "Navigator.Push button is pressed"),
                    ));
              },
              child: Text("Navigator.push"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PushScreen(
                                txt:
                                "Navigator.push replacement button is pressed"),
                      ));
                },
                child: Text("Navigator.PushReplacement")),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
