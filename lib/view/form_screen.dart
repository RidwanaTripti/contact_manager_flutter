import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:contact_manager/utils/utils.dart';
import 'package:flutter/material.dart';

class FormFieldScreen extends StatefulWidget {
  const FormFieldScreen({super.key});

  @override
  State<FormFieldScreen> createState() => _FormFieldScreenState();
}

class _FormFieldScreenState extends State<FormFieldScreen> {
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
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "নাম",
                            style: textStyle,
                          ),
                          TextFormField(
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
                          TextFormField(
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
                          TextFormField(
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
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Utils.customonlyButton(
                      "নিবন্ধন করুন",
                      Colors.blue,
                      BorderRadius.circular(10.0),
                      () => Navigator.pushNamed(context, RoutesName.otp))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
