import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BoxDecoration containerdeco = BoxDecoration(
      color: Color.fromARGB(255, 41, 138, 218),
      borderRadius: BorderRadius.circular(20));

  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.circle),
        //   color: Colors.black,
        // ),
        title: Text(
          "ফোনবুক",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ঢাকা বিভাগ",
                              style: textStyle,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("চট্টগ্রাম বিভাগ", style: textStyle)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("সিলেট বিভাগ", style: textStyle)),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("রাজশাহী\nবিভাগ", style: textStyle)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("খুলনা বিভাগ", style: textStyle)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("বরিশাল\nবিভাগ", style: textStyle)),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("রংপুর বিভাগ", style: textStyle)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: containerdeco,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("ময়মনসিংহ\nবিভাগ", style: textStyle)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
