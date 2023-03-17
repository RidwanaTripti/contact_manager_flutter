import 'package:flutter/material.dart';

class FormField_Screen extends StatefulWidget {
  const FormField_Screen({super.key});

  @override
  State<FormField_Screen> createState() => _FormField_ScreenState();
}

class _FormField_ScreenState extends State<FormField_Screen> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))),
    minimumSize: Size(200, 50),
    backgroundColor: Colors.blue,
  );
  TextStyle textStyle = TextStyle(color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Expanded(
              child: Column(
                children: [
                  Text(
                    "শুরু করার আগে আপনার প্রোফাইল সম্পূর্ণ করুন",
                    style: textStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16.0, left: 16.0, top: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "নাম",
                          style: textStyle,
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "ই-মেইল(অপশনাল)",
                          style: textStyle,
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "পাসওয়ার্ড",
                          style: textStyle,
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "পাসওয়ার্ড নিশ্চিত করুন",
                          style: textStyle,
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return PhoneBook_Screen();
                      // }));
                    },
                    child: Text("নিবন্ধন করুন"),
                    style: buttonStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
