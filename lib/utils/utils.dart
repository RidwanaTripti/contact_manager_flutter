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

  static customiconButton(
    String buttonText,
    IconData iconData,
    Color color,
    BorderRadius borderRadius,
    Function()? onTap,
  ) {
    return Center(
      child: Material(
        elevation: 0.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: onTap,
          child: Expanded(
            child: Container(
              height: 50.0,
              width: 200.0,
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static customonlyButton(
    String buttonText,
    Color color,
    BorderRadius borderRadius,
    Function()? onTap,
  ) {
    return Material(
      elevation: 0.0,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Expanded(
          child: Container(
            height: 50.0,
            width: 250.0,
            color: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void fieldFocusChange(
      FocusNode currentFocus, FocusNode nextFocus, BuildContext context) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}

class DropDistrict extends StatefulWidget {
  const DropDistrict({super.key});

  @override
  State<DropDistrict> createState() => _DropDistrictState();
}

class _DropDistrictState extends State<DropDistrict> {
  String dropdownvalue = "জেলার নাম";
  List items = [
    'ময়মনসিংহ',
    'শেরপুর',
    'নেত্রকোনা',
    'হালুয়াঘাট',
    'জামালপুর',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      items: items
          .map((items) => DropdownMenuItem(value: items, child: Text(items)))
          .toList(),
      onChanged: (item) {
        setState(() {
          dropdownvalue = item as String;
        });
      },
    );
  }
}

class DropSubDis extends StatefulWidget {
  const DropSubDis({super.key});

  @override
  State<DropSubDis> createState() => _DropSubDisState();
}

class _DropSubDisState extends State<DropSubDis> {
  String dropdownvalue = "উপজেলার নাম";
  List items = [
    'ময়মনসিংহ সদর',
    'ভালুকা',
    'ত্রিশাল',
    'হালুয়াঘাট',
    'মুক্তাগাছা',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      items: items
          .map((items) => DropdownMenuItem(value: items, child: Text(items)))
          .toList(),
      onChanged: (item) {
        setState(() {
          dropdownvalue = item as String;
        });
      },
    );
  }
}

class DropCommittee extends StatefulWidget {
  const DropCommittee({super.key});

  @override
  State<DropCommittee> createState() => _DropCommitteeState();
}

class _DropCommitteeState extends State<DropCommittee> {
  String dropdownvalue = "কমিটির নাম";
  List items = [
    'ময়মনসিংহ মহানগর কমিটি',
    'ময়মনসিংহ জেলা কমটি',
    '৭ নং ওয়াeর্ড, ময়মনসিংহ সিটি কর্পোরেশন কমিটি'
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      items: items
          .map((items) => DropdownMenuItem(value: items, child: Text(items)))
          .toList(),
      onChanged: (item) {
        setState(() {
          dropdownvalue = item as String;
        });
      },
    );
  }
}

class DropPost extends StatefulWidget {
  const DropPost({super.key});

  @override
  State<DropPost> createState() => _DropPostState();
}

class _DropPostState extends State<DropPost> {
  String dropdownvalue = "পদের নাম";
  List items = ['সভাপতি', 'সহ-সভাপতি', 'উপ দপ্তর সম্পাদক'];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      items: items
          .map((items) => DropdownMenuItem(value: items, child: Text(items)))
          .toList(),
      onChanged: (item) {
        setState(() {
          dropdownvalue = item as String;
        });
      },
    );
  }
}
