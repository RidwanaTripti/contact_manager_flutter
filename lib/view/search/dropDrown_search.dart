import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/utils.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});
  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        title: const Text("ময়মনসিংহ বিভাগ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "নাম দিয়ে খুঁজুন",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "কাঙ্ক্ষিত নামটি লিখুন",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.black54),
                  suffixIcon: Icon(FontAwesomeIcons.sliders)),
            ),
            Text("জেলা"),
            // DropDistrict(),
            // DropSubDis(),
            // DropCommittee(),
            // DropPost()
          ]),
        ),
      ),
    );
  }
}
