import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(FontAwesomeIcons.xmark),
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Expanded(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    child: const Image(
                      image: AssetImage("assets/image/image_02.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "রিদওয়ানা তৃপ্তি",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(242, 22, 22, 22)),
                    ),
                    TextButton(onPressed: () {}, child: Text("প্রোফাইল")),
                  ],
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  height: 20.0,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.heart),
                      SizedBox(width: 5),
                      Text("প্রিয় নাম্বার")
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: size.width,
                      height: 20.0,
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.gear),
                          SizedBox(width: 5),
                          Text("সেটিংস")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: size.width,
                      height: 20.0,
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.circleQuestion),
                          SizedBox(width: 5),
                          Text("সাপোর্ট")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  height: 20.0,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.circleInfo),
                      SizedBox(width: 5),
                      Text("আমদের সম্পর্কে জানুন")
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  height: 20.0,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.triangleExclamation),
                      SizedBox(width: 5),
                      Text("গোপনিয়তা নীতিমালা")
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            Divider(),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.arrowRightFromBracket),
                      SizedBox(width: 5),
                      Text("লগআউট")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
