import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../utils/utils.dart';
// import '/screens/form_screen.dart';
// import '/screens/login_screen.dart';

class OTP_Screen extends StatefulWidget {
  const OTP_Screen({super.key});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))),
    minimumSize: const Size(200, 50),
    backgroundColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return Login_Screen();
              // }));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "ও.টি.পি নিশ্চিত করুন",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text("আপনার মোবাইলে পাঠানো কোড নম্বরটি লিখুন"),
                const SizedBox(height: 30),
                const Pinput(
                  length: 4,
                ),
                const SizedBox(height: 10),
                const Text("কোড পাননি?"),
                const SizedBox(height: 5),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "পুনরায় কোড পাঠান",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: Colors.blueAccent,
                          decorationThickness: 2.0),
                    )),
                const SizedBox(height: 20),
                Utils.customonlyButton(
                    "প্রবেশ করুন",
                    Colors.blue,
                    BorderRadius.circular(10.0),
                    () => Navigator.pushNamed(context, RoutesName.profile))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
