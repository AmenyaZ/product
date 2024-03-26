import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message, Color? textColor) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    // backgroundColor: Colors.red,
    textColor: textColor != null ? textColor : null,
    fontSize: 16.0,
  );
}
