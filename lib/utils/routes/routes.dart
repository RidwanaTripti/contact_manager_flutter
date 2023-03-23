import 'package:contact_manager/view/search/dropDrown_search.dart';
import 'package:contact_manager/view/search/mymen.dart';

import '../../view/fisrt_screen.dart';
import '../../view/form_screen.dart';
import '../../view/otp_screen.dart';
import '../../view/profile_screen.dart';
import '../../view/search/mym_srchBy_name.dart';
import '../../view/signin_screen.dart';
import '../../view/splash_screen.dart';
import '/utils/routes/routes_name.dart';
import '../../view/login_screen.dart';
import 'package:flutter/material.dart';
import '../../view/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.signin:
        return MaterialPageRoute(builder: (context) => const SigninScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.form:
        return MaterialPageRoute(builder: (context) => const FormFieldScreen());
      case RoutesName.mym:
        return MaterialPageRoute(builder: (context) => const MymDivSearch());
      case RoutesName.drop:
        return MaterialPageRoute(builder: (context) => const DropDownScreen());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case RoutesName.otp:
        return MaterialPageRoute(builder: (context) => const OTP_Screen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("Route not found"),
            ),
          );
        });
    }
  }
}
