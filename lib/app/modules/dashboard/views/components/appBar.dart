import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/gen_utils.dart';

Widget appBar(BuildContext context) {
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 60,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                getGreeting(),
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.blue.shade900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: GestureDetector(
                  onTap: () {
                    print(
                      "============clickec=======================  👋",
                    );
                  },
                  child: Text(
                    "John 👋",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
          InkWell(
              onTap: () {
                showToast("No notifications to show", null);
              },
              child: Icon(Icons.notifications)),
        ],
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

String getGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;
  String greeting;

  if (hour < 12) {
    greeting = 'Good morning';
  } else if (hour < 17) {
    greeting = 'Good afternoon';
  } else {
    greeting = 'Good evening';
  }

  return greeting;
}
