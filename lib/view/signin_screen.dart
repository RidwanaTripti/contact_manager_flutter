import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:contact_manager/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  TextEditingController _numberController = TextEditingController();
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
                  child: TextFormField(
                    controller: _numberController,
                    keyboardType: TextInputType.number,
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
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Utils.customiconButton(
                    "চালিয়ে যান ",
                    FontAwesomeIcons.chevronRight,
                    Colors.blue,
                    () => Navigator.pushNamed(context, RoutesName.form)),
              ),
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
