import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class MymDivisionScreen extends StatefulWidget {
  const MymDivisionScreen({super.key});

  @override
  State<MymDivisionScreen> createState() => _MymDivisionScreenState();
}

class _MymDivisionScreenState extends State<MymDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          title: const Text("ময়মনসিংহ বিভাগ",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(scrollDirection: Axis.vertical, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("নাম দিয়ে খুঁজুন"),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "কাঙ্ক্ষিত নামটি লিখুন",
                        suffixIcon: Icon(FontAwesomeIcons.sliders)),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("আল্লামা ইকবাল"),
                            Text("সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ")
                          ],
                        ),
                        Icon(Icons.phone)
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
