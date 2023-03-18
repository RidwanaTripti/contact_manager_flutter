import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:project_sample_01/screens/otp_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))),
    minimumSize: Size(300, 50),
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "আপনার ",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "একাউন্টে",
                              style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: "সাইন-ইন করুন",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Expanded(
                  child: Container(
                    child: TextFormField(
                      // keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "আপনার মোবাইল নাম্বার দিন",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.form);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "চালিয়ে যান ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 12.0,
                      )
                    ],
                  ),
                  style: buttonStyle,
                ),
              ),
              // SizedBox(height: 300),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("চালিয়ে যান-এ ক্লিক করার মাধ্যমে আপনি আমাদের"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "নিয়ম এবং শর্তাবলি",
                                style: TextStyle(fontSize: 14.0),
                              )),
                          Text("তে রাজি হচ্ছেন"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
