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
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _surePasswordController = TextEditingController();

  FocusNode _nameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _surePasswordFocusNode = FocusNode();
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
                            controller: _nameController,
                            focusNode: _nameFocusNode,
                            onFieldSubmitted: (value) => Utils.fieldFocusChange(
                                _nameFocusNode, _emailFocusNode, context),
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
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            onFieldSubmitted: (value) => Utils.fieldFocusChange(
                                _emailFocusNode, _passwordFocusNode, context),
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
                            controller: _passwordController,
                            focusNode: _passwordFocusNode,
                            onFieldSubmitted: (value) => Utils.fieldFocusChange(
                                _passwordFocusNode,
                                _surePasswordFocusNode,
                                context),
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
                            controller: _surePasswordController,
                            focusNode: _surePasswordFocusNode,
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
                  Utils.customonlyButton("নিবন্ধন করুন", Colors.blue,
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
