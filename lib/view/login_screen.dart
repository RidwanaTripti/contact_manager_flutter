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
  TextEditingController _numberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode _numberFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
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
                        controller: _numberController,
                        keyboardType: TextInputType.number,
                        focusNode: _numberFocusNode,
                        decoration: InputDecoration(
                          hintText: "আপনার মোবাইল নাম্বার দিন",
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onFieldSubmitted: (value) => Utils.fieldFocusChange(
                            _numberFocusNode, _passwordFocusNode, context),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: TextFormField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
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
                      const SizedBox(height: 45),
                      Column(
                        children: [
                          Utils.customiconButton(
                              'প্রবেশ করুন',
                              FontAwesomeIcons.arrowRight,
                              Colors.blue,
                              BorderRadius.circular(10.0),
                              () => Navigator.pushNamed(
                                  context, RoutesName.home)),
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
                          Utils.customonlyButton(
                              "নতুন একাউন্ট তৈরী করুন",
                              Colors.blue,
                              BorderRadius.circular(10.0),
                              () => Navigator.pushNamed(
                                  context, RoutesName.signin))
                        ],
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
