import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';

class Utils {
  // toast message
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.redAccent,
        textColor: Colors.black,
        toastLength: Toast.LENGTH_LONG);
  }

  //Flushbar massage
  static errorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.redAccent,
        flushbarPosition: FlushbarPosition.TOP,
        forwardAnimationCurve: Curves.decelerate,
        icon: const Icon(
          Icons.error,
          size: 28,
          color: Colors.white,
        ),
      )..show(context),
    );
  }

  // Snackbar
  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(message),
      ),
    );
  }
}
