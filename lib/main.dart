import 'package:contact_manager/utils/routes/routes.dart';
import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.splash,
      // initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
