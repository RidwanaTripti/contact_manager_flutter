import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
// import '/screens/form_screen.dart';
// import '/screens/login_screen.dart';

class OTP_Screen extends StatefulWidget {
  const OTP_Screen({super.key});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
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
            icon: Icon(Icons.arrow_back),
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
                Text(
                  "ও.টি.পি নিশ্চিত করুন",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("আপনার মোবাইলে পাঠানো কোড নম্বরটি লিখুন"),
                SizedBox(height: 30),
                Pinput(
                  length: 4,
                ),
                SizedBox(height: 10),
                Text("কোড পাননি?"),
                SizedBox(height: 5),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "পুনরায় কোড পাঠান",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: Colors.blueAccent,
                          decorationThickness: 2.0),
                    )),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return FormField_Screen();
                    // }));
                  },
                  child: Text("প্রবেশ করুন"),
                  style: buttonStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
