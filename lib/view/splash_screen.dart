import 'package:contact_manager/view/fisrt_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../utils/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, '/login');
      Navigator.pushNamed(context, RoutesName.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FirstScreen());
  }
}
