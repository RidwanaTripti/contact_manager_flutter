import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:contact_manager/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))),
    minimumSize: const Size(500, 50),
    backgroundColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: const [
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
                      text: "লগ-ইন করুন",
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
                  child: Column(
                    children: [
                      TextFormField(
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "আপনার মোবাইল নাম্বার দিন",
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: "আপনার পাসওয়ার্ড দিন",
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RoutesName.home);
                                // Utils.toastMessage("No Internet Connection");
                                // Utils.errorMessage(
                                //     "No Internet Connection", context);
                                Utils.snackBar(
                                    "No Internet Connection", context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "প্রবেশ করুন ",
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
                            const SizedBox(height: 15),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "পাসওয়ার্ড ভুলে গেছেন?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decorationColor: Colors.blueAccent,
                                    decorationThickness: 2.0),
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RoutesName.signin);
                              },
                              child: Text("নতুন একাউন্ট তৈরী করুন"),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(250.0, 50.0),
                                backgroundColor:
                                    const Color.fromARGB(255, 29, 110, 175),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
   //Scaffold(
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         InkWell(
    //           onTap: () {
    //             // Utils.snackBar("No internet connection", context);
    //             // Utils.errorMessage("No internet connection", context);
    //             Utils.toastMessage("No internet connection");
    //             // Navigator.pushNamed(context, RoutesName.home);
    //           },
    //           child: const Text("Login"),
    //         ),
    //       ],
    //     ),
    //   ),
    // );