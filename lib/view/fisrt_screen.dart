import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/image/image_01.jpg"),
                        ),
                        SizedBox(height: 20),
                        Container(
                            child: Text(
                          "গণপ্রজাতন্ত্রী বাংলাদেশ সরকার",
                          style: TextStyle(fontSize: 25.0, color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 200.0),
                Container(
                  child: Text.rich(
                    TextSpan(
                      text: "Developed by",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text: " MAX", style: TextStyle(color: Colors.blue)),
                        TextSpan(
                          text: "SOP",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
